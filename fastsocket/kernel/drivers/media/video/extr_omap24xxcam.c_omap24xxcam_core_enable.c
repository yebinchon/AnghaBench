
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int cc_ctrl; scalar_t__ mmio_base; } ;


 int CC_CTRL ;
 scalar_t__ CC_REG_OFFSET ;
 int omap24xxcam_reg_out (scalar_t__,int ,int ) ;

__attribute__((used)) static void omap24xxcam_core_enable(const struct omap24xxcam_device *cam)
{

 omap24xxcam_reg_out(cam->mmio_base + CC_REG_OFFSET, CC_CTRL,
       cam->cc_ctrl);
}
