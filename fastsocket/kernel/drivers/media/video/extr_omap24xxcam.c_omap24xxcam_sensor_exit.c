
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {scalar_t__ sdev; } ;


 int vidioc_int_dev_exit (scalar_t__) ;

__attribute__((used)) static void omap24xxcam_sensor_exit(struct omap24xxcam_device *cam)
{
 if (cam->sdev)
  vidioc_int_dev_exit(cam->sdev);
}
