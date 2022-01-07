
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_S3C2440_CAM_C ;
 int IRQ_S3C2440_CAM_P ;
 int S3C2410_INTSUBMSK ;
 int S3C2410_SUBSRCPND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void s3c_irq_demux_cam(unsigned int irq,
         struct irq_desc *desc)
{
 unsigned int subsrc, submsk;




 subsrc = __raw_readl(S3C2410_SUBSRCPND);
 submsk = __raw_readl(S3C2410_INTSUBMSK);

 subsrc &= ~submsk;
 subsrc >>= 11;
 subsrc &= 3;

 if (subsrc != 0) {
  if (subsrc & 1) {
   generic_handle_irq(IRQ_S3C2440_CAM_C);
  }
  if (subsrc & 2) {
   generic_handle_irq(IRQ_S3C2440_CAM_P);
  }
 }
}
