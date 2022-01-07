
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {scalar_t__ mmio_base; } ;


 int CC_CTRL_DMA ;
 int CC_CTRL_DMA_EN ;
 int CC_IRQENABLE ;
 int CC_IRQENABLE_FIFO_OF_IRQ ;
 int CC_IRQENABLE_FSC_ERR_IRQ ;
 int CC_IRQENABLE_FW_ERR_IRQ ;
 int CC_IRQENABLE_SSC_ERR_IRQ ;
 scalar_t__ CC_REG_OFFSET ;
 int CC_SYSCONFIG ;
 int CC_SYSCONFIG_AUTOIDLE ;
 int DMA_THRESHOLD ;
 int omap24xxcam_reg_out (scalar_t__,int ,int) ;

__attribute__((used)) static void omap24xxcam_core_hwinit(const struct omap24xxcam_device *cam)
{




 omap24xxcam_reg_out(cam->mmio_base + CC_REG_OFFSET, CC_SYSCONFIG,
       CC_SYSCONFIG_AUTOIDLE);


 omap24xxcam_reg_out(cam->mmio_base + CC_REG_OFFSET, CC_CTRL_DMA,
       CC_CTRL_DMA_EN | (DMA_THRESHOLD / 4 - 1));


 omap24xxcam_reg_out(cam->mmio_base + CC_REG_OFFSET, CC_IRQENABLE,
       CC_IRQENABLE_FW_ERR_IRQ
       | CC_IRQENABLE_FSC_ERR_IRQ
       | CC_IRQENABLE_SSC_ERR_IRQ
       | CC_IRQENABLE_FIFO_OF_IRQ);
}
