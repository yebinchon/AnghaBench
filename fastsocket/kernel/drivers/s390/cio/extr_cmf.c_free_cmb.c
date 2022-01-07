
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmb_data {struct cmb_data* last_block; } ;
struct cmb {int dummy; } ;
struct ccw_device_private {int cmb_list; struct cmb_data* cmb; } ;
struct ccw_device {int ccwlock; struct ccw_device_private* private; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_channels; int lock; int * mem; int list; } ;


 TYPE_1__ cmb_area ;
 int cmf_activate (int *,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct cmb_data*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void free_cmb(struct ccw_device *cdev)
{
 struct ccw_device_private *priv;
 struct cmb_data *cmb_data;

 spin_lock(&cmb_area.lock);
 spin_lock_irq(cdev->ccwlock);

 priv = cdev->private;

 if (list_empty(&priv->cmb_list)) {

  goto out;
 }

 cmb_data = priv->cmb;
 priv->cmb = ((void*)0);
 if (cmb_data)
  kfree(cmb_data->last_block);
 kfree(cmb_data);
 list_del_init(&priv->cmb_list);

 if (list_empty(&cmb_area.list)) {
  ssize_t size;
  size = sizeof(struct cmb) * cmb_area.num_channels;
  cmf_activate(((void*)0), 0);
  free_pages((unsigned long)cmb_area.mem, get_order(size));
  cmb_area.mem = ((void*)0);
 }
out:
 spin_unlock_irq(cdev->ccwlock);
 spin_unlock(&cmb_area.lock);
}
