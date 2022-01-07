
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmbe {int size; struct cmbe* last_block; struct cmbe* hw_block; } ;
struct cmb_data {int size; struct cmb_data* last_block; struct cmb_data* hw_block; } ;
struct ccw_device {TYPE_1__* private; int ccwlock; } ;
struct TYPE_4__ {int lock; int list; } ;
struct TYPE_3__ {int cmb_list; struct cmbe* cmb; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__ cmb_area ;
 int cmf_activate (int *,int) ;
 int kfree (struct cmbe*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int alloc_cmbe(struct ccw_device *cdev)
{
 struct cmbe *cmbe;
 struct cmb_data *cmb_data;
 int ret;

 cmbe = kzalloc (sizeof (*cmbe) * 2, GFP_KERNEL);
 if (!cmbe)
  return -ENOMEM;
 cmb_data = kzalloc(sizeof(struct cmb_data), GFP_KERNEL);
 if (!cmb_data) {
  ret = -ENOMEM;
  goto out_free;
 }
 cmb_data->last_block = kzalloc(sizeof(struct cmbe), GFP_KERNEL);
 if (!cmb_data->last_block) {
  ret = -ENOMEM;
  goto out_free;
 }
 cmb_data->size = sizeof(struct cmbe);
 spin_lock_irq(cdev->ccwlock);
 if (cdev->private->cmb) {
  spin_unlock_irq(cdev->ccwlock);
  ret = -EBUSY;
  goto out_free;
 }
 cmb_data->hw_block = cmbe;
 cdev->private->cmb = cmb_data;
 spin_unlock_irq(cdev->ccwlock);


 spin_lock(&cmb_area.lock);
 if (list_empty(&cmb_area.list))
  cmf_activate(((void*)0), 1);
 list_add_tail(&cdev->private->cmb_list, &cmb_area.list);
 spin_unlock(&cmb_area.lock);

 return 0;
out_free:
 if (cmb_data)
  kfree(cmb_data->last_block);
 kfree(cmb_data);
 kfree(cmbe);
 return ret;
}
