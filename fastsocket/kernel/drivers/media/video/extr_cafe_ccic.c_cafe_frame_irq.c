
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {unsigned int nbufs; int flags; } ;


 int CF_DMA_ACTIVE ;
 int FRAMEIRQS ;
 unsigned int IRQ_EOF0 ;
 unsigned int IRQ_SOF0 ;
 unsigned int IRQ_SOF1 ;
 unsigned int IRQ_SOF2 ;
 int REG_IRQSTAT ;
 int cafe_frame_complete (struct cafe_camera*,unsigned int) ;
 int cafe_reg_write (struct cafe_camera*,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void cafe_frame_irq(struct cafe_camera *cam, unsigned int irqs)
{
 unsigned int frame;

 cafe_reg_write(cam, REG_IRQSTAT, FRAMEIRQS);





 for (frame = 0; frame < cam->nbufs; frame++)
  if (irqs & (IRQ_EOF0 << frame))
   cafe_frame_complete(cam, frame);





 if (irqs & (IRQ_SOF0 | IRQ_SOF1 | IRQ_SOF2))
  set_bit(CF_DMA_ACTIVE, &cam->flags);
}
