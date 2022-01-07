
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma; } ;
struct omap24xxcam_device {int dev; TYPE_1__ sgdma; int mmio_base; } ;
typedef int irqreturn_t ;


 int CAM_IRQSTATUS ;
 int CAM_IRQSTATUS_CC_IRQ ;
 int CAM_IRQSTATUS_DMA_IRQ0 ;
 int CAM_IRQSTATUS_DMA_IRQ1 ;
 int CAM_IRQSTATUS_DMA_IRQ2 ;
 int CAM_IRQSTATUS_MMU_IRQ ;
 int IRQ_RETVAL (unsigned int) ;
 int dev_err (int ,char*) ;
 int omap24xxcam_core_isr (struct omap24xxcam_device*) ;
 int omap24xxcam_dma_isr (int *) ;
 int omap24xxcam_reg_in (int ,int ) ;

__attribute__((used)) static irqreturn_t omap24xxcam_isr(int irq, void *arg)
{
 struct omap24xxcam_device *cam = (struct omap24xxcam_device *)arg;
 u32 irqstatus;
 unsigned int irqhandled = 0;

 irqstatus = omap24xxcam_reg_in(cam->mmio_base, CAM_IRQSTATUS);

 if (irqstatus &
     (CAM_IRQSTATUS_DMA_IRQ2 | CAM_IRQSTATUS_DMA_IRQ1
      | CAM_IRQSTATUS_DMA_IRQ0)) {
  omap24xxcam_dma_isr(&cam->sgdma.dma);
  irqhandled = 1;
 }
 if (irqstatus & CAM_IRQSTATUS_CC_IRQ) {
  omap24xxcam_core_isr(cam);
  irqhandled = 1;
 }
 if (irqstatus & CAM_IRQSTATUS_MMU_IRQ)
  dev_err(cam->dev, "unhandled camera MMU interrupt!\n");

 return IRQ_RETVAL(irqhandled);
}
