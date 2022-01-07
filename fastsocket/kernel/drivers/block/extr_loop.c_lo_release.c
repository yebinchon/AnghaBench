
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_flags; int lo_ctl_mutex; scalar_t__ lo_refcnt; } ;
struct gendisk {struct loop_device* private_data; } ;
typedef int fmode_t ;


 int LO_FLAGS_AUTOCLEAR ;
 int loop_clr_fd (struct loop_device*,int *) ;
 int loop_flush (struct loop_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lo_release(struct gendisk *disk, fmode_t mode)
{
 struct loop_device *lo = disk->private_data;
 int err;

 mutex_lock(&lo->lo_ctl_mutex);

 if (--lo->lo_refcnt)
  goto out;

 if (lo->lo_flags & LO_FLAGS_AUTOCLEAR) {




  err = loop_clr_fd(lo, ((void*)0));
  if (!err)
   goto out_unlocked;
 } else {




  loop_flush(lo);
 }

out:
 mutex_unlock(&lo->lo_ctl_mutex);
out_unlocked:
 return 0;
}
