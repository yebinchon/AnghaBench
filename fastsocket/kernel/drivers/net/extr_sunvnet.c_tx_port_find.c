
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int dummy; } ;
struct vnet {int lock; } ;
struct sk_buff {int dummy; } ;


 struct vnet_port* __tx_port_find (struct vnet*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct vnet_port *tx_port_find(struct vnet *vp, struct sk_buff *skb)
{
 struct vnet_port *ret;
 unsigned long flags;

 spin_lock_irqsave(&vp->lock, flags);
 ret = __tx_port_find(vp, skb);
 spin_unlock_irqrestore(&vp->lock, flags);

 return ret;
}
