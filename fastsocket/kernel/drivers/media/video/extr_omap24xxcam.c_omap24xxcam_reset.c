
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int dummy; } ;


 int omap24xxcam_capture_cont (struct omap24xxcam_device*) ;
 int omap24xxcam_capture_stop (struct omap24xxcam_device*) ;

__attribute__((used)) static void omap24xxcam_reset(struct omap24xxcam_device *cam)
{
 omap24xxcam_capture_stop(cam);
 omap24xxcam_capture_cont(cam);
}
