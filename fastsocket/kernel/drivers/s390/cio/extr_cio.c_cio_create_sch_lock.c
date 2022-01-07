
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc (int,int ) ;
 int spin_lock_init (int ) ;

int cio_create_sch_lock(struct subchannel *sch)
{
 sch->lock = kmalloc(sizeof(spinlock_t), GFP_KERNEL);
 if (!sch->lock)
  return -ENOMEM;
 spin_lock_init(sch->lock);
 return 0;
}
