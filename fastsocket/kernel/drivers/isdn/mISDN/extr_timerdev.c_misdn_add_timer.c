
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct mISDNtimerdev {int work; int next_id; int lock; int pending; int wait; } ;
struct TYPE_3__ {long data; scalar_t__ expires; int function; } ;
struct mISDNtimer {int id; TYPE_1__ tl; struct mISDNtimerdev* dev; int list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int dev_expire_timer ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct mISDNtimer* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,int) ;
 int spin_unlock_irqrestore (int *,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int
misdn_add_timer(struct mISDNtimerdev *dev, int timeout)
{
 int id;
 u_long flags;
 struct mISDNtimer *timer;

 if (!timeout) {
  dev->work = 1;
  wake_up_interruptible(&dev->wait);
  id = 0;
 } else {
  timer = kzalloc(sizeof(struct mISDNtimer), GFP_KERNEL);
  if (!timer)
   return -ENOMEM;
  spin_lock_irqsave(&dev->lock, flags);
  timer->id = dev->next_id++;
  if (dev->next_id < 0)
   dev->next_id = 1;
  list_add_tail(&timer->list, &dev->pending);
  spin_unlock_irqrestore(&dev->lock, flags);
  timer->dev = dev;
  timer->tl.data = (long)timer;
  timer->tl.function = dev_expire_timer;
  init_timer(&timer->tl);
  timer->tl.expires = jiffies + ((HZ * (u_long)timeout) / 1000);
  add_timer(&timer->tl);
  id = timer->id;
 }
 return id;
}
