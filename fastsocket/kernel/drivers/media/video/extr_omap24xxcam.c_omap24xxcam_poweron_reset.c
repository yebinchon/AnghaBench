
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int dev; int mmio_base; } ;


 int CAM_SYSCONFIG ;
 int CAM_SYSCONFIG_SOFTRESET ;
 int CAM_SYSSTATUS ;
 int CAM_SYSSTATUS_RESETDONE ;
 int RESET_TIMEOUT_NS ;
 int dev_err (int ,char*) ;
 int ndelay (int) ;
 int omap24xxcam_reg_in (int ,int ) ;
 int omap24xxcam_reg_out (int ,int ,int ) ;

__attribute__((used)) static void omap24xxcam_poweron_reset(struct omap24xxcam_device *cam)
{
 int max_loop = RESET_TIMEOUT_NS;


 omap24xxcam_reg_out(cam->mmio_base,
       CAM_SYSCONFIG,
       CAM_SYSCONFIG_SOFTRESET);


 while (!(omap24xxcam_reg_in(cam->mmio_base, CAM_SYSSTATUS)
   & CAM_SYSSTATUS_RESETDONE)
        && --max_loop) {
  ndelay(1);
 }

 if (!(omap24xxcam_reg_in(cam->mmio_base, CAM_SYSSTATUS)
       & CAM_SYSSTATUS_RESETDONE))
  dev_err(cam->dev, "camera soft reset timeout\n");
}
