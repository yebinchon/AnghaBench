
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raw3270 {TYPE_1__* cdev; int minor; void* cltubdev; void* clttydev; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;


 int IBM_FS3270_MAJOR ;
 int IBM_TTY3270_MAJOR ;
 scalar_t__ IS_ERR (void*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (void*) ;
 int class3270 ;
 int dev_name (TYPE_2__*) ;
 void* device_create (int ,TYPE_2__*,int ,int *,char*,int ) ;
 int device_destroy (int ,int ) ;
 int raw3270_attr_group ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int raw3270_create_attributes(struct raw3270 *rp)
{
 int rc;

 rc = sysfs_create_group(&rp->cdev->dev.kobj, &raw3270_attr_group);
 if (rc)
  goto out;

 rp->clttydev = device_create(class3270, &rp->cdev->dev,
         MKDEV(IBM_TTY3270_MAJOR, rp->minor), ((void*)0),
         "tty%s", dev_name(&rp->cdev->dev));
 if (IS_ERR(rp->clttydev)) {
  rc = PTR_ERR(rp->clttydev);
  goto out_ttydev;
 }

 rp->cltubdev = device_create(class3270, &rp->cdev->dev,
         MKDEV(IBM_FS3270_MAJOR, rp->minor), ((void*)0),
         "tub%s", dev_name(&rp->cdev->dev));
 if (!IS_ERR(rp->cltubdev))
  goto out;

 rc = PTR_ERR(rp->cltubdev);
 device_destroy(class3270, MKDEV(IBM_TTY3270_MAJOR, rp->minor));

out_ttydev:
 sysfs_remove_group(&rp->cdev->dev.kobj, &raw3270_attr_group);
out:
 return rc;
}
