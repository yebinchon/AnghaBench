
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int IRQF_VALID ;
 unsigned int IRQ_CAM ;
 unsigned int IRQ_NFCON ;
 unsigned int IRQ_S3C2440_CAM_C ;
 unsigned int IRQ_S3C2440_CAM_P ;
 int handle_level_irq ;
 int s3c_irq_cam ;
 int s3c_irq_demux_cam ;
 int s3c_irq_level_chip ;
 int set_irq_chained_handler (unsigned int,int ) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_flags (unsigned int,int ) ;
 int set_irq_handler (unsigned int,int ) ;

__attribute__((used)) static int s3c244x_irq_add(struct sys_device *sysdev)
{
 unsigned int irqno;

 set_irq_chip(IRQ_NFCON, &s3c_irq_level_chip);
 set_irq_handler(IRQ_NFCON, handle_level_irq);
 set_irq_flags(IRQ_NFCON, IRQF_VALID);



 set_irq_chip(IRQ_CAM, &s3c_irq_level_chip);
 set_irq_handler(IRQ_CAM, handle_level_irq);
 set_irq_chained_handler(IRQ_CAM, s3c_irq_demux_cam);

 for (irqno = IRQ_S3C2440_CAM_C; irqno <= IRQ_S3C2440_CAM_P; irqno++) {
  set_irq_chip(irqno, &s3c_irq_cam);
  set_irq_handler(irqno, handle_level_irq);
  set_irq_flags(irqno, IRQF_VALID);
 }

 return 0;
}
