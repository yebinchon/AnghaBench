
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int irq; } ;
struct ethoc {int dummy; } ;


 int INT_SOURCE ;
 int ethoc_interrupt (int ,struct net_device*) ;
 int ethoc_read (struct ethoc*,int ) ;
 scalar_t__ likely (int ) ;
 struct ethoc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ethoc_tx_timeout(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);
 u32 pending = ethoc_read(priv, INT_SOURCE);
 if (likely(pending))
  ethoc_interrupt(dev->irq, dev);
}
