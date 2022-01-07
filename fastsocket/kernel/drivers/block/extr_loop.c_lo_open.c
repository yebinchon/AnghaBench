
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int lo_ctl_mutex; int lo_refcnt; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct loop_device* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lo_open(struct block_device *bdev, fmode_t mode)
{
 struct loop_device *lo = bdev->bd_disk->private_data;

 mutex_lock(&lo->lo_ctl_mutex);
 lo->lo_refcnt++;
 mutex_unlock(&lo->lo_ctl_mutex);

 return 0;
}
