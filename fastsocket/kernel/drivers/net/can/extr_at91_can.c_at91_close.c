
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct at91_priv {int clk; int napi; } ;


 int CAN_STATE_STOPPED ;
 int at91_chip_stop (struct net_device*,int ) ;
 int clk_disable (int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int at91_close(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&priv->napi);
 at91_chip_stop(dev, CAN_STATE_STOPPED);

 free_irq(dev->irq, dev);
 clk_disable(priv->clk);

 close_candev(dev);

 return 0;
}
