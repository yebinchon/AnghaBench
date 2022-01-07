
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_HOST_BUSY ;
 int STATUS_FLAGS ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_check_pre(struct i801_priv *priv)
{
 int status;

 status = inb_p(SMBHSTSTS(priv));
 if (status & SMBHSTSTS_HOST_BUSY) {
  dev_err(&priv->pci_dev->dev, "SMBus is busy, can't use it!\n");
  return -EBUSY;
 }

 status &= STATUS_FLAGS;
 if (status) {
  dev_dbg(&priv->pci_dev->dev, "Clearing status flags (%02x)\n",
   status);
  outb_p(status, SMBHSTSTS(priv));
  status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
  if (status) {
   dev_err(&priv->pci_dev->dev,
    "Failed clearing status flags (%02x)\n",
    status);
   return -EBUSY;
  }
 }

 return 0;
}
