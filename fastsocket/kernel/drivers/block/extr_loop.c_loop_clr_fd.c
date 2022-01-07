
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {scalar_t__ lo_state; int lo_refcnt; int lo_ctl_mutex; int lo_disk; int lo_file_name; int lo_crypt_name; int lo_encrypt_key; int * lo_thread; scalar_t__ lo_flags; scalar_t__ lo_encrypt_key_size; scalar_t__ lo_sizelimit; scalar_t__ lo_offset; int * lo_encryption; int * lo_device; int * ioctl; int * transfer; struct file* lo_backing_file; TYPE_1__* lo_queue; int lo_lock; int old_gfp_mask; } ;
struct file {int f_mapping; } ;
struct block_device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int * unplug_fn; } ;


 int BLKRRPART ;
 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 int LO_KEY_SIZE ;
 int LO_NAME_SIZE ;
 scalar_t__ Lo_bound ;
 scalar_t__ Lo_rundown ;
 scalar_t__ Lo_unbound ;
 int THIS_MODULE ;
 int bd_set_size (struct block_device*,int ) ;
 int fput (struct file*) ;
 int invalidate_bdev (struct block_device*) ;
 int ioctl_by_bdev (struct block_device*,int ,int ) ;
 int kthread_stop (int *) ;
 int loop_release_xfer (struct loop_device*) ;
 int mapping_set_gfp_mask (int ,int ) ;
 scalar_t__ max_part ;
 int memset (int ,int ,int ) ;
 int module_put (int ) ;
 int mutex_unlock (int *) ;
 int set_capacity (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int loop_clr_fd(struct loop_device *lo, struct block_device *bdev)
{
 struct file *filp = lo->lo_backing_file;
 gfp_t gfp = lo->old_gfp_mask;

 if (lo->lo_state != Lo_bound)
  return -ENXIO;

 if (lo->lo_refcnt > 1)
  return -EBUSY;

 if (filp == ((void*)0))
  return -EINVAL;

 spin_lock_irq(&lo->lo_lock);
 lo->lo_state = Lo_rundown;
 spin_unlock_irq(&lo->lo_lock);

 kthread_stop(lo->lo_thread);

 lo->lo_queue->unplug_fn = ((void*)0);
 lo->lo_backing_file = ((void*)0);

 loop_release_xfer(lo);
 lo->transfer = ((void*)0);
 lo->ioctl = ((void*)0);
 lo->lo_device = ((void*)0);
 lo->lo_encryption = ((void*)0);
 lo->lo_offset = 0;
 lo->lo_sizelimit = 0;
 lo->lo_encrypt_key_size = 0;
 lo->lo_flags = 0;
 lo->lo_thread = ((void*)0);
 memset(lo->lo_encrypt_key, 0, LO_KEY_SIZE);
 memset(lo->lo_crypt_name, 0, LO_NAME_SIZE);
 memset(lo->lo_file_name, 0, LO_NAME_SIZE);
 if (bdev)
  invalidate_bdev(bdev);
 set_capacity(lo->lo_disk, 0);
 if (bdev)
  bd_set_size(bdev, 0);
 mapping_set_gfp_mask(filp->f_mapping, gfp);
 lo->lo_state = Lo_unbound;

 module_put(THIS_MODULE);
 if (max_part > 0 && bdev)
  ioctl_by_bdev(bdev, BLKRRPART, 0);
 mutex_unlock(&lo->lo_ctl_mutex);






 fput(filp);
 return 0;
}
