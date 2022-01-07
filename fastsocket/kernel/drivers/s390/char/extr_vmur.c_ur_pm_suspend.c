
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {scalar_t__ open_flag; } ;
struct ccw_device {int dev; } ;


 int EBUSY ;
 int TRACE (char*,struct ccw_device*) ;
 struct urdev* dev_get_drvdata (int *) ;
 int dev_name (int *) ;
 int pr_err (char*,int ,int ) ;
 int ur_banner ;

__attribute__((used)) static int ur_pm_suspend(struct ccw_device *cdev)
{
 struct urdev *urd = dev_get_drvdata(&cdev->dev);

 TRACE("ur_pm_suspend: cdev=%p\n", cdev);
 if (urd->open_flag) {
  pr_err("Unit record device %s is busy, %s refusing to "
         "suspend.\n", dev_name(&cdev->dev), ur_banner);
  return -EBUSY;
 }
 return 0;
}
