
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct plat_cpmac_data {int reset_bit; } ;
struct net_device {int dummy; } ;
struct cpmac_priv {int regs; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct plat_cpmac_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CPMAC_MAC_CONTROL ;
 int CPMAC_MAC_INT_CLEAR ;
 int CPMAC_RX_CONTROL ;
 int CPMAC_RX_INT_CLEAR ;
 int CPMAC_RX_PTR (int) ;
 int CPMAC_TX_CONTROL ;
 int CPMAC_TX_INT_CLEAR ;
 int CPMAC_TX_PTR (int) ;
 int CPMAC_UNICAST_CLEAR ;
 int MAC_MII ;
 int ar7_device_reset (int ) ;
 int cpmac_read (int ,int ) ;
 int cpmac_write (int ,int ,int) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cpmac_hw_stop(struct net_device *dev)
{
 int i;
 struct cpmac_priv *priv = netdev_priv(dev);
 struct plat_cpmac_data *pdata = priv->pdev->dev.platform_data;

 ar7_device_reset(pdata->reset_bit);
 cpmac_write(priv->regs, CPMAC_RX_CONTROL,
      cpmac_read(priv->regs, CPMAC_RX_CONTROL) & ~1);
 cpmac_write(priv->regs, CPMAC_TX_CONTROL,
      cpmac_read(priv->regs, CPMAC_TX_CONTROL) & ~1);
 for (i = 0; i < 8; i++) {
  cpmac_write(priv->regs, CPMAC_TX_PTR(i), 0);
  cpmac_write(priv->regs, CPMAC_RX_PTR(i), 0);
 }
 cpmac_write(priv->regs, CPMAC_UNICAST_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_RX_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_TX_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_MAC_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_MAC_CONTROL,
      cpmac_read(priv->regs, CPMAC_MAC_CONTROL) & ~MAC_MII);
}
