
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thin_c {scalar_t__ origin_dev; scalar_t__ pool_dev; int td; TYPE_2__* pool; int list; int can_destroy; } ;
struct dm_target {struct thin_c* private; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int mutex; } ;


 int __pool_dec (TYPE_2__*) ;
 int dm_pool_close_thin_device (int ) ;
 int dm_put_device (struct dm_target*,scalar_t__) ;
 TYPE_1__ dm_thin_pool_table ;
 int kfree (struct thin_c*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;
 int thin_put (struct thin_c*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void thin_dtr(struct dm_target *ti)
{
 struct thin_c *tc = ti->private;
 unsigned long flags;

 thin_put(tc);
 wait_for_completion(&tc->can_destroy);

 spin_lock_irqsave(&tc->pool->lock, flags);
 list_del_rcu(&tc->list);
 spin_unlock_irqrestore(&tc->pool->lock, flags);
 synchronize_rcu();

 mutex_lock(&dm_thin_pool_table.mutex);

 __pool_dec(tc->pool);
 dm_pool_close_thin_device(tc->td);
 dm_put_device(ti, tc->pool_dev);
 if (tc->origin_dev)
  dm_put_device(ti, tc->origin_dev);
 kfree(tc);

 mutex_unlock(&dm_thin_pool_table.mutex);
}
