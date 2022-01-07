
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int if_type; } ;



 int omap24xxcam_core_xclk_set (struct omap24xxcam_device const*,int ) ;

__attribute__((used)) static void omap24xxcam_sensor_if_disable(const struct omap24xxcam_device *cam)
{
 switch (cam->if_type) {
 case 128:
  omap24xxcam_core_xclk_set(cam, 0);
  break;
 }
}
