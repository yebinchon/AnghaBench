
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {unsigned char byte; unsigned char word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct nforce2_smbus {int dummy; } ;
struct i2c_adapter {int dev; struct nforce2_smbus* algo_data; } ;
typedef int s32 ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EPROTO ;
 unsigned short I2C_CLIENT_PEC ;

 int I2C_SMBUS_BLOCK_MAX ;



 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;
 int NVIDIA_SMB_ADDR ;
 int NVIDIA_SMB_BCNT ;
 int NVIDIA_SMB_CMD ;
 int NVIDIA_SMB_DATA ;
 int NVIDIA_SMB_PRTCL ;
 unsigned char NVIDIA_SMB_PRTCL_BLOCK_DATA ;
 unsigned char NVIDIA_SMB_PRTCL_BYTE ;
 unsigned char NVIDIA_SMB_PRTCL_BYTE_DATA ;
 unsigned char NVIDIA_SMB_PRTCL_PEC ;
 unsigned char NVIDIA_SMB_PRTCL_QUICK ;
 unsigned char NVIDIA_SMB_PRTCL_READ ;
 unsigned char NVIDIA_SMB_PRTCL_WORD_DATA ;
 unsigned char NVIDIA_SMB_PRTCL_WRITE ;
 int dev_err (int *,char*,int) ;
 int inb_p (int ) ;
 int nforce2_check_status (struct i2c_adapter*) ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static s32 nforce2_access(struct i2c_adapter * adap, u16 addr,
  unsigned short flags, char read_write,
  u8 command, int size, union i2c_smbus_data * data)
{
 struct nforce2_smbus *smbus = adap->algo_data;
 unsigned char protocol, pec;
 u8 len;
 int i, status;

 protocol = (read_write == I2C_SMBUS_READ) ? NVIDIA_SMB_PRTCL_READ :
  NVIDIA_SMB_PRTCL_WRITE;
 pec = (flags & I2C_CLIENT_PEC) ? NVIDIA_SMB_PRTCL_PEC : 0;

 switch (size) {

  case 129:
   protocol |= NVIDIA_SMB_PRTCL_QUICK;
   read_write = I2C_SMBUS_WRITE;
   break;

  case 131:
   if (read_write == I2C_SMBUS_WRITE)
    outb_p(command, NVIDIA_SMB_CMD);
   protocol |= NVIDIA_SMB_PRTCL_BYTE;
   break;

  case 130:
   outb_p(command, NVIDIA_SMB_CMD);
   if (read_write == I2C_SMBUS_WRITE)
    outb_p(data->byte, NVIDIA_SMB_DATA);
   protocol |= NVIDIA_SMB_PRTCL_BYTE_DATA;
   break;

  case 128:
   outb_p(command, NVIDIA_SMB_CMD);
   if (read_write == I2C_SMBUS_WRITE) {
     outb_p(data->word, NVIDIA_SMB_DATA);
     outb_p(data->word >> 8, NVIDIA_SMB_DATA+1);
   }
   protocol |= NVIDIA_SMB_PRTCL_WORD_DATA | pec;
   break;

  case 132:
   outb_p(command, NVIDIA_SMB_CMD);
   if (read_write == I2C_SMBUS_WRITE) {
    len = data->block[0];
    if ((len == 0) || (len > I2C_SMBUS_BLOCK_MAX)) {
     dev_err(&adap->dev,
      "Transaction failed "
      "(requested block size: %d)\n",
      len);
     return -EINVAL;
    }
    outb_p(len, NVIDIA_SMB_BCNT);
    for (i = 0; i < I2C_SMBUS_BLOCK_MAX; i++)
     outb_p(data->block[i + 1],
            NVIDIA_SMB_DATA+i);
   }
   protocol |= NVIDIA_SMB_PRTCL_BLOCK_DATA | pec;
   break;

  default:
   dev_err(&adap->dev, "Unsupported transaction %d\n", size);
   return -EOPNOTSUPP;
 }

 outb_p((addr & 0x7f) << 1, NVIDIA_SMB_ADDR);
 outb_p(protocol, NVIDIA_SMB_PRTCL);

 status = nforce2_check_status(adap);
 if (status)
  return status;

 if (read_write == I2C_SMBUS_WRITE)
  return 0;

 switch (size) {

  case 131:
  case 130:
   data->byte = inb_p(NVIDIA_SMB_DATA);
   break;

  case 128:
   data->word = inb_p(NVIDIA_SMB_DATA) | (inb_p(NVIDIA_SMB_DATA+1) << 8);
   break;

  case 132:
   len = inb_p(NVIDIA_SMB_BCNT);
   if ((len <= 0) || (len > I2C_SMBUS_BLOCK_MAX)) {
    dev_err(&adap->dev, "Transaction failed "
     "(received block size: 0x%02x)\n",
     len);
    return -EPROTO;
   }
   for (i = 0; i < len; i++)
    data->block[i+1] = inb_p(NVIDIA_SMB_DATA + i);
   data->block[0] = len;
   break;
 }

 return 0;
}
