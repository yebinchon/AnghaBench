
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int FEATURE_I2CBLOCK ;

 int I2C_SMBUS_BLOCK_MAX ;





 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;
 int SMBBLKDAT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;





 int VT596_QUICK ;

 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 TYPE_1__ vt596_adapter ;
 int vt596_features ;
 int vt596_transaction (int) ;

__attribute__((used)) static s32 vt596_access(struct i2c_adapter *adap, u16 addr,
  unsigned short flags, char read_write, u8 command,
  int size, union i2c_smbus_data *data)
{
 int i;
 int status;

 switch (size) {
 case 135:
  size = VT596_QUICK;
  break;
 case 139:
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMBHSTCMD);
  size = 132;
  break;
 case 138:
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMBHSTDAT0);
  size = 131;
  break;
 case 134:
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMBHSTDAT0);
   outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1);
  }
  size = 128;
  break;
 case 136:
  outb_p(command, SMBHSTCMD);
  outb_p(data->word & 0xff, SMBHSTDAT0);
  outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1);
  size = 129;
  break;
 case 137:
  if (!(vt596_features & FEATURE_I2CBLOCK))
   goto exit_unsupported;
  if (read_write == I2C_SMBUS_READ)
   outb_p(data->block[0], SMBHSTDAT0);

 case 140:
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   u8 len = data->block[0];
   if (len > I2C_SMBUS_BLOCK_MAX)
    len = I2C_SMBUS_BLOCK_MAX;
   outb_p(len, SMBHSTDAT0);
   inb_p(SMBHSTCNT);
   for (i = 1; i <= len; i++)
    outb_p(data->block[i], SMBBLKDAT);
  }
  size = (size == 137) ?
         130 : 133;
  break;
 default:
  goto exit_unsupported;
 }

 outb_p(((addr & 0x7f) << 1) | read_write, SMBHSTADD);

 status = vt596_transaction(size);
 if (status)
  return status;

 if (size == 129)
  read_write = I2C_SMBUS_READ;

 if ((read_write == I2C_SMBUS_WRITE) || (size == VT596_QUICK))
  return 0;

 switch (size) {
 case 132:
 case 131:
  data->byte = inb_p(SMBHSTDAT0);
  break;
 case 128:
 case 129:
  data->word = inb_p(SMBHSTDAT0) + (inb_p(SMBHSTDAT1) << 8);
  break;
 case 130:
 case 133:
  data->block[0] = inb_p(SMBHSTDAT0);
  if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
   data->block[0] = I2C_SMBUS_BLOCK_MAX;
  inb_p(SMBHSTCNT);
  for (i = 1; i <= data->block[0]; i++)
   data->block[i] = inb_p(SMBBLKDAT);
  break;
 }
 return 0;

exit_unsupported:
 dev_warn(&vt596_adapter.dev, "Unsupported transaction %d\n",
   size);
 return -EOPNOTSUPP;
}
