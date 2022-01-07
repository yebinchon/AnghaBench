
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int MAX_TIMEOUT ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_INTR ;
 int dev_dbg (int *,char*) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void i801_wait_hwpec(struct i801_priv *priv)
{
 int timeout = 0;
 int status;

 do {
  msleep(1);
  status = inb_p(SMBHSTSTS(priv));
 } while ((!(status & SMBHSTSTS_INTR))
   && (timeout++ < MAX_TIMEOUT));

 if (timeout > MAX_TIMEOUT)
  dev_dbg(&priv->pci_dev->dev, "PEC Timeout!\n");

 outb_p(status, SMBHSTSTS(priv));
}
