
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccwgroup_driver {int (* set_online ) (struct ccwgroup_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct ccwgroup_device {scalar_t__ state; int onoff; TYPE_1__ dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int EAGAIN ;
 int EINVAL ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int ) ;
 int stub1 (struct ccwgroup_device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;

int ccwgroup_set_online(struct ccwgroup_device *gdev){
 struct ccwgroup_driver *gdrv;
 int ret;

 if (atomic_cmpxchg(&gdev->onoff, 0, 1) != 0)
  return -EAGAIN;
 if (gdev->state == CCWGROUP_ONLINE) {
  ret = 0;
  goto out;
 }
 if (!gdev->dev.driver) {
  ret = -EINVAL;
  goto out;
 }
 gdrv = to_ccwgroupdrv (gdev->dev.driver);
 if ((ret = gdrv->set_online ? gdrv->set_online(gdev) : 0))
  goto out;

 gdev->state = CCWGROUP_ONLINE;
 out:
 atomic_set(&gdev->onoff, 0);
 return ret;
}
