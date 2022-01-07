
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {struct raw3215_info* buffer; } ;
struct ccw_device {int dev; } ;


 int ccw_device_set_offline (struct ccw_device*) ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct raw3215_info*) ;

__attribute__((used)) static void raw3215_remove (struct ccw_device *cdev)
{
 struct raw3215_info *raw;

 ccw_device_set_offline(cdev);
 raw = dev_get_drvdata(&cdev->dev);
 if (raw) {
  dev_set_drvdata(&cdev->dev, ((void*)0));
  kfree(raw->buffer);
  kfree(raw);
 }
}
