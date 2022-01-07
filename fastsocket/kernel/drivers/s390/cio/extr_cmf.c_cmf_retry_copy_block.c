
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_block_struct {int kref; int wait; int ret; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct copy_block_struct* cmb_wait; } ;


 int WARN_ON (int) ;
 int cmf_copy_block (struct ccw_device*) ;
 int cmf_copy_block_release ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int wake_up (int *) ;

void cmf_retry_copy_block(struct ccw_device *cdev)
{
 struct copy_block_struct *copy_block;

 copy_block = cdev->private->cmb_wait;
 if (!copy_block) {
  WARN_ON(1);
  return;
 }
 kref_get(&copy_block->kref);
 copy_block->ret = cmf_copy_block(cdev);
 wake_up(&copy_block->wait);
 kref_put(&copy_block->kref, cmf_copy_block_release);
}
