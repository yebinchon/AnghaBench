
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTCNT_KILL ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BUS_ERR ;
 int SMBHSTSTS_DEV_ERR ;
 int SMBHSTSTS_FAILED ;
 int SMBHSTSTS_HOST_BUSY ;
 int STATUS_FLAGS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_check_post(struct i801_priv *priv, int status, int timeout)
{
 int result = 0;


 if (timeout) {
  dev_err(&priv->pci_dev->dev, "Transaction timeout\n");

  dev_dbg(&priv->pci_dev->dev, "Terminating the current operation\n");
  outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL,
         SMBHSTCNT(priv));
  msleep(1);
  outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL),
         SMBHSTCNT(priv));


  status = inb_p(SMBHSTSTS(priv));
  if ((status & SMBHSTSTS_HOST_BUSY) ||
      !(status & SMBHSTSTS_FAILED))
   dev_err(&priv->pci_dev->dev,
    "Failed terminating the transaction\n");
  outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
  return -ETIMEDOUT;
 }

 if (status & SMBHSTSTS_FAILED) {
  result = -EIO;
  dev_err(&priv->pci_dev->dev, "Transaction failed\n");
 }
 if (status & SMBHSTSTS_DEV_ERR) {
  result = -ENXIO;
  dev_dbg(&priv->pci_dev->dev, "No response\n");
 }
 if (status & SMBHSTSTS_BUS_ERR) {
  result = -EAGAIN;
  dev_dbg(&priv->pci_dev->dev, "Lost arbitration\n");
 }

 if (result) {

  outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
  status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
  if (status) {
   dev_warn(&priv->pci_dev->dev, "Failed clearing status "
     "flags at end of transaction (%02x)\n",
     status);
  }
 }

 return result;
}
