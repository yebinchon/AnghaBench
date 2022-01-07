
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ax_device {TYPE_1__ mii_timer; scalar_t__ running; int mii_lock; int mii; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mii_check_media (int *,int ,int ) ;
 int netif_msg_link (struct ax_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static void ax_mii_expiry(unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct ax_device *ax = to_ax_dev(dev);
 unsigned long flags;

 spin_lock_irqsave(&ax->mii_lock, flags);
 mii_check_media(&ax->mii, netif_msg_link(ax), 0);
 spin_unlock_irqrestore(&ax->mii_lock, flags);

 if (ax->running) {
  ax->mii_timer.expires = jiffies + HZ*2;
  add_timer(&ax->mii_timer);
 }
}
