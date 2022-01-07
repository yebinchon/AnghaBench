
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_c {struct pool* pool; } ;
struct TYPE_2__ {int work; } ;
struct pool {int low_water_triggered; TYPE_1__ waker; int lock; } ;
struct dm_target {struct pool_c* private; } ;


 int do_waker (int *) ;
 int requeue_bios (struct pool*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pool_resume(struct dm_target *ti)
{
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 unsigned long flags;

 spin_lock_irqsave(&pool->lock, flags);
 pool->low_water_triggered = 0;
 spin_unlock_irqrestore(&pool->lock, flags);
 requeue_bios(pool);

 do_waker(&pool->waker.work);
}
