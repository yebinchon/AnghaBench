
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;


 int EINVAL ;





 char I2C_SMBUS_READ ;

 struct pmac_i2c_bus* i2c_get_adapdata (struct i2c_adapter*) ;
 int pmac_i2c_close (struct pmac_i2c_bus*) ;
 int pmac_i2c_mode_combined ;
 int pmac_i2c_mode_std ;
 int pmac_i2c_mode_stdsub ;
 int pmac_i2c_open (struct pmac_i2c_bus*,int ) ;
 int pmac_i2c_setmode (struct pmac_i2c_bus*,int ) ;
 int pmac_i2c_xfer (struct pmac_i2c_bus*,int,int,int,int*,int) ;

__attribute__((used)) static s32 i2c_powermac_smbus_xfer( struct i2c_adapter* adap,
     u16 addr,
     unsigned short flags,
     char read_write,
     u8 command,
     int size,
     union i2c_smbus_data* data)
{
 struct pmac_i2c_bus *bus = i2c_get_adapdata(adap);
 int rc = 0;
 int read = (read_write == I2C_SMBUS_READ);
 int addrdir = (addr << 1) | read;
 u8 local[2];

 rc = pmac_i2c_open(bus, 0);
 if (rc)
  return rc;

 switch (size) {
        case 129:
  rc = pmac_i2c_setmode(bus, pmac_i2c_mode_std);
  if (rc)
   goto bail;
  rc = pmac_i2c_xfer(bus, addrdir, 0, 0, ((void*)0), 0);
      break;
        case 132:
  rc = pmac_i2c_setmode(bus, pmac_i2c_mode_std);
  if (rc)
   goto bail;
  rc = pmac_i2c_xfer(bus, addrdir, 0, 0, &data->byte, 1);
      break;
        case 131:
  rc = pmac_i2c_setmode(bus, read ?
          pmac_i2c_mode_combined :
          pmac_i2c_mode_stdsub);
  if (rc)
   goto bail;
  rc = pmac_i2c_xfer(bus, addrdir, 1, command, &data->byte, 1);
      break;
        case 128:
  rc = pmac_i2c_setmode(bus, read ?
          pmac_i2c_mode_combined :
          pmac_i2c_mode_stdsub);
  if (rc)
   goto bail;
  if (!read) {
   local[0] = data->word & 0xff;
   local[1] = (data->word >> 8) & 0xff;
  }
  rc = pmac_i2c_xfer(bus, addrdir, 1, command, local, 2);
  if (rc == 0 && read) {
   data->word = ((u16)local[1]) << 8;
   data->word |= local[0];
  }
      break;
        case 133:
  rc = pmac_i2c_setmode(bus, read ?
          pmac_i2c_mode_combined :
          pmac_i2c_mode_stdsub);
  if (rc)
   goto bail;
  rc = pmac_i2c_xfer(bus, addrdir, 1, command, data->block,
       data->block[0] + 1);

  break;
 case 130:
  rc = pmac_i2c_setmode(bus, read ?
          pmac_i2c_mode_combined :
          pmac_i2c_mode_stdsub);
  if (rc)
   goto bail;
  rc = pmac_i2c_xfer(bus, addrdir, 1, command,
       &data->block[1], data->block[0]);
  break;

        default:
      rc = -EINVAL;
 }
 bail:
 pmac_i2c_close(bus);
 return rc;
}
