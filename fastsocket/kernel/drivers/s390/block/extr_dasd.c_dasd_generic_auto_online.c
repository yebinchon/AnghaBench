
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; } ;
typedef int async_cookie_t ;


 int ccw_device_set_online (struct ccw_device*) ;
 int dev_name (int *) ;
 int pr_warning (char*,int ,int) ;

__attribute__((used)) static void dasd_generic_auto_online(void *data, async_cookie_t cookie)
{
 struct ccw_device *cdev = data;
 int ret;

 ret = ccw_device_set_online(cdev);
 if (ret)
  pr_warning("%s: Setting the DASD online failed with rc=%d\n",
      dev_name(&cdev->dev), ret);
}
