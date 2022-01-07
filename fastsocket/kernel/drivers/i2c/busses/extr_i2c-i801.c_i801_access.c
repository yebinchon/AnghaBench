
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct i801_priv {int features; TYPE_1__* pci_dev; } ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int ENABLE_INT9 ;
 int EOPNOTSUPP ;
 int FEATURE_SMBUS_PEC ;
 unsigned short I2C_CLIENT_PEC ;





 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;


 int I801_QUICK ;

 int SMBAUXCTL (struct i801_priv*) ;
 int SMBAUXCTL_CRC ;
 int SMBAUXCTL_E32B ;
 int SMBHSTADD (struct i801_priv*) ;
 int SMBHSTCMD (struct i801_priv*) ;
 int SMBHSTDAT0 (struct i801_priv*) ;
 int SMBHSTDAT1 (struct i801_priv*) ;
 int dev_err (int *,char*,int) ;
 struct i801_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int i801_block_transaction (struct i801_priv*,union i2c_smbus_data*,char,int,int) ;
 int i801_transaction (struct i801_priv*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static s32 i801_access(struct i2c_adapter *adap, u16 addr,
         unsigned short flags, char read_write, u8 command,
         int size, union i2c_smbus_data *data)
{
 int hwpec;
 int block = 0;
 int ret, xact = 0;
 struct i801_priv *priv = i2c_get_adapdata(adap);

 hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC)
  && size != 132
  && size != 133;

 switch (size) {
 case 132:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD(priv));
  xact = I801_QUICK;
  break;
 case 135:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD(priv));
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMBHSTCMD(priv));
  xact = 130;
  break;
 case 134:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMBHSTDAT0(priv));
  xact = 129;
  break;
 case 131:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  if (read_write == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMBHSTDAT0(priv));
   outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1(priv));
  }
  xact = 128;
  break;
 case 136:
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  block = 1;
  break;
 case 133:


  outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
  if (read_write == I2C_SMBUS_READ) {


   outb_p(command, SMBHSTDAT1(priv));
  } else
   outb_p(command, SMBHSTCMD(priv));
  block = 1;
  break;
 default:
  dev_err(&priv->pci_dev->dev, "Unsupported transaction %d\n",
   size);
  return -EOPNOTSUPP;
 }

 if (hwpec)
  outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
 else
  outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC),
         SMBAUXCTL(priv));

 if (block)
  ret = i801_block_transaction(priv, data, read_write, size,
          hwpec);
 else
  ret = i801_transaction(priv, xact | ENABLE_INT9);




 if (hwpec || block)
  outb_p(inb_p(SMBAUXCTL(priv)) &
         ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));

 if (block)
  return ret;
 if (ret)
  return ret;
 if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK))
  return 0;

 switch (xact & 0x7f) {
 case 130:
 case 129:
  data->byte = inb_p(SMBHSTDAT0(priv));
  break;
 case 128:
  data->word = inb_p(SMBHSTDAT0(priv)) +
        (inb_p(SMBHSTDAT1(priv)) << 8);
  break;
 }
 return 0;
}
