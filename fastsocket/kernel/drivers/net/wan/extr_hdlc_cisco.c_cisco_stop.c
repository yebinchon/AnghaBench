
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cisco_state {int lock; scalar_t__ txseq; scalar_t__ up; int timer; } ;
typedef int hdlc_device ;


 int del_timer_sync (int *) ;
 int * dev_to_hdlc (struct net_device*) ;
 int netif_dormant_on (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cisco_state* state (int *) ;

__attribute__((used)) static void cisco_stop(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 struct cisco_state *st = state(hdlc);
 unsigned long flags;

 del_timer_sync(&st->timer);

 spin_lock_irqsave(&st->lock, flags);
 netif_dormant_on(dev);
 st->up = st->txseq = 0;
 spin_unlock_irqrestore(&st->lock, flags);
}
