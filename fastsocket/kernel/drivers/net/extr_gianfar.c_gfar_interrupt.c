
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct gfar_private {TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ievent; } ;


 int IEVENT_ERR_MASK ;
 int IEVENT_RX_MASK ;
 int IEVENT_TX_MASK ;
 int IRQ_HANDLED ;
 int gfar_error (int,void*) ;
 int gfar_read (int *) ;
 int gfar_receive (int,void*) ;
 int gfar_transmit (int,void*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t gfar_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct gfar_private *priv = netdev_priv(dev);


 u32 events = gfar_read(&priv->regs->ievent);


 if (events & IEVENT_RX_MASK)
  gfar_receive(irq, dev_id);


 if (events & IEVENT_TX_MASK)
  gfar_transmit(irq, dev_id);


 if (events & IEVENT_ERR_MASK)
  gfar_error(irq, dev_id);

 return IRQ_HANDLED;
}
