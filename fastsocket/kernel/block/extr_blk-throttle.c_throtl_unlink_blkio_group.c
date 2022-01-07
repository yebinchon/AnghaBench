
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_data {TYPE_1__* queue; } ;
struct blkio_group {int dummy; } ;
struct TYPE_2__ {int queue_lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tg_of_blkg (struct blkio_group*) ;
 int throtl_destroy_tg (struct throtl_data*,int ) ;

void throtl_unlink_blkio_group(void *key, struct blkio_group *blkg)
{
 unsigned long flags;
 struct throtl_data *td = key;

 spin_lock_irqsave(td->queue->queue_lock, flags);
 throtl_destroy_tg(td, tg_of_blkg(blkg));
 spin_unlock_irqrestore(td->queue->queue_lock, flags);
}
