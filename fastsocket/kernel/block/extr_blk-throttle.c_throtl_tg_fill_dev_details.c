
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dev; } ;
struct throtl_grp {TYPE_1__ blkg; } ;
struct throtl_data {TYPE_2__* queue; } ;
struct TYPE_4__ {int queue_lock; } ;


 int __throtl_tg_fill_dev_details (struct throtl_data*,struct throtl_grp*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
throtl_tg_fill_dev_details(struct throtl_data *td, struct throtl_grp *tg)
{
 if (!tg || tg->blkg.dev)
  return;

 spin_lock_irq(td->queue->queue_lock);
 __throtl_tg_fill_dev_details(td, tg);
 spin_unlock_irq(td->queue->queue_lock);
}
