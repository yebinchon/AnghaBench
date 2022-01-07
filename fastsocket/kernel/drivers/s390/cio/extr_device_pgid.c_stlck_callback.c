
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int ccw_device_stlck_done (struct ccw_device*,void*,int) ;

__attribute__((used)) static void stlck_callback(struct ccw_device *cdev, void *data, int rc)
{
 ccw_device_stlck_done(cdev, data, rc);
}
