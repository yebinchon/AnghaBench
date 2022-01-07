
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urdev {struct ccw_device* cdev; int ref_count; int open_lock; int wait; int io_mutex; int dev_id; int reclen; } ;
struct TYPE_2__ {int driver_info; } ;
struct ccw_device {int dev; TYPE_1__ id; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int ccw_device_get_id (struct ccw_device*,int *) ;
 int get_device (int *) ;
 int init_waitqueue_head (int *) ;
 struct urdev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct urdev *urdev_alloc(struct ccw_device *cdev)
{
 struct urdev *urd;

 urd = kzalloc(sizeof(struct urdev), GFP_KERNEL);
 if (!urd)
  return ((void*)0);
 urd->reclen = cdev->id.driver_info;
 ccw_device_get_id(cdev, &urd->dev_id);
 mutex_init(&urd->io_mutex);
 init_waitqueue_head(&urd->wait);
 spin_lock_init(&urd->open_lock);
 atomic_set(&urd->ref_count, 1);
 urd->cdev = cdev;
 get_device(&cdev->dev);
 return urd;
}
