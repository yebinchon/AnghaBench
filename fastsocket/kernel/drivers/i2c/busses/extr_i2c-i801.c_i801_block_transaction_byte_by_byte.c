
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int* block; } ;
struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENABLE_INT9 ;
 int EPROTO ;
 int I2C_SMBUS_BLOCK_MAX ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 char I2C_SMBUS_READ ;
 char I2C_SMBUS_WRITE ;
 int I801_BLOCK_DATA ;
 int I801_BLOCK_LAST ;
 int I801_I2C_BLOCK_DATA ;
 int I801_I2C_BLOCK_LAST ;
 int I801_START ;
 int MAX_TIMEOUT ;
 int SMBBLKDAT (struct i801_priv*) ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTDAT0 (struct i801_priv*) ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BYTE_DONE ;
 int SMBHSTSTS_HOST_BUSY ;
 int SMBHSTSTS_INTR ;
 int dev_err (int *,char*,int) ;
 int i801_check_post (struct i801_priv*,int,int) ;
 int i801_check_pre (struct i801_priv*) ;
 int inb (int ) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_block_transaction_byte_by_byte(struct i801_priv *priv,
            union i2c_smbus_data *data,
            char read_write, int command,
            int hwpec)
{
 int i, len;
 int smbcmd;
 int status;
 int result;
 int timeout;

 result = i801_check_pre(priv);
 if (result < 0)
  return result;

 len = data->block[0];

 if (read_write == I2C_SMBUS_WRITE) {
  outb_p(len, SMBHSTDAT0(priv));
  outb_p(data->block[1], SMBBLKDAT(priv));
 }

 for (i = 1; i <= len; i++) {
  if (i == len && read_write == I2C_SMBUS_READ) {
   if (command == I2C_SMBUS_I2C_BLOCK_DATA)
    smbcmd = I801_I2C_BLOCK_LAST;
   else
    smbcmd = I801_BLOCK_LAST;
  } else {
   if (command == I2C_SMBUS_I2C_BLOCK_DATA
    && read_write == I2C_SMBUS_READ)
    smbcmd = I801_I2C_BLOCK_DATA;
   else
    smbcmd = I801_BLOCK_DATA;
  }
  outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));

  if (i == 1)
   outb_p(inb(SMBHSTCNT(priv)) | I801_START,
          SMBHSTCNT(priv));


  timeout = 0;
  do {
   msleep(1);
   status = inb_p(SMBHSTSTS(priv));
  } while ((!(status & SMBHSTSTS_BYTE_DONE))
    && (timeout++ < MAX_TIMEOUT));

  result = i801_check_post(priv, status, timeout > MAX_TIMEOUT);
  if (result < 0)
   return result;

  if (i == 1 && read_write == I2C_SMBUS_READ
   && command != I2C_SMBUS_I2C_BLOCK_DATA) {
   len = inb_p(SMBHSTDAT0(priv));
   if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
    dev_err(&priv->pci_dev->dev,
     "Illegal SMBus block read size %d\n",
     len);

    while (inb_p(SMBHSTSTS(priv)) &
           SMBHSTSTS_HOST_BUSY)
     outb_p(SMBHSTSTS_BYTE_DONE,
            SMBHSTSTS(priv));
    outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
    return -EPROTO;
   }
   data->block[0] = len;
  }


  if (read_write == I2C_SMBUS_READ)
   data->block[i] = inb_p(SMBBLKDAT(priv));
  if (read_write == I2C_SMBUS_WRITE && i+1 <= len)
   outb_p(data->block[i+1], SMBBLKDAT(priv));


  outb_p(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, SMBHSTSTS(priv));
 }

 return 0;
}
