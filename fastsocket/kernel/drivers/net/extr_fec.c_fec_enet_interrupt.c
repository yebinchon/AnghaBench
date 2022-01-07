
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ hwp; } ;
typedef int irqreturn_t ;


 int FEC_ENET_MII ;
 int FEC_ENET_RXF ;
 int FEC_ENET_TXF ;
 scalar_t__ FEC_IEVENT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int fec_enet_mii (struct net_device*) ;
 int fec_enet_rx (struct net_device*) ;
 int fec_enet_tx (struct net_device*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t
fec_enet_interrupt(int irq, void * dev_id)
{
 struct net_device *dev = dev_id;
 struct fec_enet_private *fep = netdev_priv(dev);
 uint int_events;
 irqreturn_t ret = IRQ_NONE;

 do {
  int_events = readl(fep->hwp + FEC_IEVENT);
  writel(int_events, fep->hwp + FEC_IEVENT);

  if (int_events & FEC_ENET_RXF) {
   ret = IRQ_HANDLED;
   fec_enet_rx(dev);
  }





  if (int_events & FEC_ENET_TXF) {
   ret = IRQ_HANDLED;
   fec_enet_tx(dev);
  }

  if (int_events & FEC_ENET_MII) {
   ret = IRQ_HANDLED;
   fec_enet_mii(dev);
  }

 } while (int_events);

 return ret;
}
