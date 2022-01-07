
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct TYPE_4__ {unsigned long data; void* function; } ;
struct pcnet32_access {int (* read_bcr ) (int ,int) ;int (* write_bcr ) (int ,int,int) ;} ;
struct pcnet32_private {int lock; TYPE_1__ blink_timer; struct pcnet32_access a; } ;
struct net_device {int base_addr; } ;


 int HZ ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int del_timer_sync (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 int jiffies ;
 int mod_timer (TYPE_1__*,int ) ;
 int msleep_interruptible (int) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 scalar_t__ pcnet32_led_blink_callback ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int,int) ;

__attribute__((used)) static int pcnet32_phys_id(struct net_device *dev, u32 data)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 struct pcnet32_access *a = &lp->a;
 ulong ioaddr = dev->base_addr;
 unsigned long flags;
 int i, regs[4];

 if (!lp->blink_timer.function) {
  init_timer(&lp->blink_timer);
  lp->blink_timer.function = (void *)pcnet32_led_blink_callback;
  lp->blink_timer.data = (unsigned long)dev;
 }


 spin_lock_irqsave(&lp->lock, flags);
 for (i = 4; i < 8; i++) {
  regs[i - 4] = a->read_bcr(ioaddr, i);
 }
 spin_unlock_irqrestore(&lp->lock, flags);

 mod_timer(&lp->blink_timer, jiffies);
 set_current_state(TASK_INTERRUPTIBLE);


 if ((!data) || (data > (u32) (MAX_SCHEDULE_TIMEOUT / HZ)))
  data = (u32) (MAX_SCHEDULE_TIMEOUT / HZ);

 msleep_interruptible(data * 1000);
 del_timer_sync(&lp->blink_timer);


 spin_lock_irqsave(&lp->lock, flags);
 for (i = 4; i < 8; i++) {
  a->write_bcr(ioaddr, i, regs[i - 4]);
 }
 spin_unlock_irqrestore(&lp->lock, flags);

 return 0;
}
