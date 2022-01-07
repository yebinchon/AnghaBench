
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int sdev; } ;


 int omap24xxcam_clock_on (struct omap24xxcam_device*) ;
 int omap24xxcam_sensor_disable (struct omap24xxcam_device*) ;
 int omap24xxcam_sensor_if_enable (struct omap24xxcam_device*) ;
 int vidioc_int_init (int ) ;
 int vidioc_int_s_power (int ,int) ;

__attribute__((used)) static int omap24xxcam_sensor_enable(struct omap24xxcam_device *cam)
{
 int rval;

 omap24xxcam_clock_on(cam);

 omap24xxcam_sensor_if_enable(cam);

 rval = vidioc_int_s_power(cam->sdev, 1);
 if (rval)
  goto out;

 rval = vidioc_int_init(cam->sdev);
 if (rval)
  goto out;

 return 0;

out:
 omap24xxcam_sensor_disable(cam);

 return rval;
}
