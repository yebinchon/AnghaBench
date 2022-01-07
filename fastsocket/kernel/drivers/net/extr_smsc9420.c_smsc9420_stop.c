
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct smsc9420_pdata {int mii_bus; int * phy_dev; int napi; int int_lock; } ;
struct net_device {int irq; } ;


 int BUG_ON (int) ;
 int INT_CFG ;
 int INT_CFG_IRQ_EN_ ;
 int free_irq (int ,struct smsc9420_pdata*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 int napi_disable (int *) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;
 int smsc9420_dmac_soft_reset (struct smsc9420_pdata*) ;
 int smsc9420_free_rx_ring (struct smsc9420_pdata*) ;
 int smsc9420_free_tx_ring (struct smsc9420_pdata*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc9420_stop_rx (struct smsc9420_pdata*) ;
 int smsc9420_stop_tx (struct smsc9420_pdata*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int smsc9420_stop(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 u32 int_cfg;
 ulong flags;

 BUG_ON(!pd);
 BUG_ON(!pd->phy_dev);


 spin_lock_irqsave(&pd->int_lock, flags);
 int_cfg = smsc9420_reg_read(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
 smsc9420_reg_write(pd, INT_CFG, int_cfg);
 spin_unlock_irqrestore(&pd->int_lock, flags);

 netif_tx_disable(dev);
 napi_disable(&pd->napi);

 smsc9420_stop_tx(pd);
 smsc9420_free_tx_ring(pd);

 smsc9420_stop_rx(pd);
 smsc9420_free_rx_ring(pd);

 free_irq(dev->irq, pd);

 smsc9420_dmac_soft_reset(pd);

 phy_stop(pd->phy_dev);

 phy_disconnect(pd->phy_dev);
 pd->phy_dev = ((void*)0);
 mdiobus_unregister(pd->mii_bus);
 mdiobus_free(pd->mii_bus);

 return 0;
}
