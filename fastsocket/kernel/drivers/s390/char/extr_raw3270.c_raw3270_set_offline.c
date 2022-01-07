
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {int flags; } ;
struct ccw_device {int dev; } ;


 int EBUSY ;
 int RAW3270_FLAGS_CONSOLE ;
 struct raw3270* dev_get_drvdata (int *) ;
 int raw3270_remove (struct ccw_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
raw3270_set_offline (struct ccw_device *cdev)
{
 struct raw3270 *rp;

 rp = dev_get_drvdata(&cdev->dev);
 if (test_bit(RAW3270_FLAGS_CONSOLE, &rp->flags))
  return -EBUSY;
 raw3270_remove(cdev);
 return 0;
}
