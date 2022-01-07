
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int ALI15X3_BLOCK_CLR ;



 int ALI15X3_QUICK ;
 int ALI15X3_STS_IDLE ;

 int EOPNOTSUPP ;





 char I2C_SMBUS_WRITE ;
 int MAX_TIMEOUT ;
 int SMBBLKDAT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int SMBHSTSTS ;
 int ali15x3_transaction (struct i2c_adapter*) ;
 int dev_dbg (int *,char*,int,int,int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static s32 ali15x3_access(struct i2c_adapter * adap, u16 addr,
     unsigned short flags, char read_write, u8 command,
     int size, union i2c_smbus_data * data)
{
 int i, len;
 int temp;
 int timeout;


 outb_p(0xFF, SMBHSTSTS);

 temp = inb_p(SMBHSTSTS);
 for (timeout = 0;
      (timeout < MAX_TIMEOUT) && !(temp & ALI15X3_STS_IDLE);
      timeout++) {
  msleep(1);
  temp = inb_p(SMBHSTSTS);
 }
 if (timeout >= MAX_TIMEOUT) {
  dev_err(&adap->dev, "Idle wait Timeout! STS=0x%02x\n", temp);
 }

 switch (size) {
 case 129:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD);
  size = ALI15X3_QUICK;
  break;
 case 131:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMBHSTCMD);
  size = 135;
  break;
 case 130:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMBHSTDAT0);
  size = 134;
  break;
 case 128:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMBHSTDAT0);
   outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1);
  }
  size = 133;
  break;
 case 132:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len < 0) {
    len = 0;
    data->block[0] = len;
   }
   if (len > 32) {
    len = 32;
    data->block[0] = len;
   }
   outb_p(len, SMBHSTDAT0);

   outb_p(inb_p(SMBHSTCNT) | ALI15X3_BLOCK_CLR, SMBHSTCNT);
   for (i = 1; i <= len; i++)
    outb_p(data->block[i], SMBBLKDAT);
  }
  size = 136;
  break;
 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }

 outb_p(size, SMBHSTCNT);

 temp = ali15x3_transaction(adap);
 if (temp)
  return temp;

 if ((read_write == I2C_SMBUS_WRITE) || (size == ALI15X3_QUICK))
  return 0;


 switch (size) {
 case 135:
  data->byte = inb_p(SMBHSTDAT0);
  break;
 case 134:
  data->byte = inb_p(SMBHSTDAT0);
  break;
 case 133:
  data->word = inb_p(SMBHSTDAT0) + (inb_p(SMBHSTDAT1) << 8);
  break;
 case 136:
  len = inb_p(SMBHSTDAT0);
  if (len > 32)
   len = 32;
  data->block[0] = len;

  outb_p(inb_p(SMBHSTCNT) | ALI15X3_BLOCK_CLR, SMBHSTCNT);
  for (i = 1; i <= data->block[0]; i++) {
   data->block[i] = inb_p(SMBBLKDAT);
   dev_dbg(&adap->dev, "Blk: len=%d, i=%d, data=%02x\n",
    len, i, data->block[i]);
  }
  break;
 }
 return 0;
}
