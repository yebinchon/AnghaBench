
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma; } ;
struct omap24xxcam_device {TYPE_1__ sgdma; int mmio_base; } ;


 scalar_t__ CAMMMU_REG_OFFSET ;
 scalar_t__ CAMMMU_SYSCONFIG ;
 int CAMMMU_SYSCONFIG_AUTOIDLE ;
 scalar_t__ CAM_SYSCONFIG ;
 int CAM_SYSCONFIG_AUTOIDLE ;
 int omap24xxcam_core_hwinit (struct omap24xxcam_device*) ;
 int omap24xxcam_dma_hwinit (int *) ;
 int omap24xxcam_poweron_reset (struct omap24xxcam_device*) ;
 int omap24xxcam_reg_out (int ,scalar_t__,int ) ;

__attribute__((used)) static void omap24xxcam_hwinit(struct omap24xxcam_device *cam)
{
 omap24xxcam_poweron_reset(cam);


 omap24xxcam_reg_out(cam->mmio_base, CAM_SYSCONFIG,
       CAM_SYSCONFIG_AUTOIDLE);


 omap24xxcam_reg_out(cam->mmio_base,
       CAMMMU_REG_OFFSET + CAMMMU_SYSCONFIG,
       CAMMMU_SYSCONFIG_AUTOIDLE);

 omap24xxcam_core_hwinit(cam);

 omap24xxcam_dma_hwinit(&cam->sgdma.dma);
}
