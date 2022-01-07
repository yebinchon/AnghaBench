
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct pcnet32_access {int (* read_bcr ) (int ,int) ;int (* write_bcr ) (int ,int,int) ;} ;
struct pcnet32_private {int blink_timer; int lock; struct pcnet32_access a; } ;
struct net_device {int base_addr; } ;


 int PCNET32_BLINK_TIMEOUT ;
 int mod_timer (int *,int ) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void pcnet32_led_blink_callback(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 struct pcnet32_access *a = &lp->a;
 ulong ioaddr = dev->base_addr;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&lp->lock, flags);
 for (i = 4; i < 8; i++) {
  a->write_bcr(ioaddr, i, a->read_bcr(ioaddr, i) ^ 0x4000);
 }
 spin_unlock_irqrestore(&lp->lock, flags);

 mod_timer(&lp->blink_timer, PCNET32_BLINK_TIMEOUT);
}
