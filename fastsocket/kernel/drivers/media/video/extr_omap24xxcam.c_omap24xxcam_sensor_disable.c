
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int sdev; } ;


 int omap24xxcam_clock_off (struct omap24xxcam_device*) ;
 int omap24xxcam_sensor_if_disable (struct omap24xxcam_device*) ;
 int vidioc_int_s_power (int ,int ) ;

__attribute__((used)) static void omap24xxcam_sensor_disable(struct omap24xxcam_device *cam)
{
 omap24xxcam_sensor_if_disable(cam);
 omap24xxcam_clock_off(cam);
 vidioc_int_s_power(cam->sdev, 0);
}
