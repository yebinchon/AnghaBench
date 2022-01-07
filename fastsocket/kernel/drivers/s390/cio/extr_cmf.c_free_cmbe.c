
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmb_data {struct cmb_data* last_block; } ;
struct ccw_device {TYPE_1__* private; int ccwlock; } ;
struct TYPE_4__ {int lock; int list; } ;
struct TYPE_3__ {int cmb_list; struct cmb_data* cmb; } ;


 TYPE_2__ cmb_area ;
 int cmf_activate (int *,int ) ;
 int kfree (struct cmb_data*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void free_cmbe(struct ccw_device *cdev)
{
 struct cmb_data *cmb_data;

 spin_lock_irq(cdev->ccwlock);
 cmb_data = cdev->private->cmb;
 cdev->private->cmb = ((void*)0);
 if (cmb_data)
  kfree(cmb_data->last_block);
 kfree(cmb_data);
 spin_unlock_irq(cdev->ccwlock);


 spin_lock(&cmb_area.lock);
 list_del_init(&cdev->private->cmb_list);
 if (list_empty(&cmb_area.list))
  cmf_activate(((void*)0), 0);
 spin_unlock(&cmb_area.lock);
}
