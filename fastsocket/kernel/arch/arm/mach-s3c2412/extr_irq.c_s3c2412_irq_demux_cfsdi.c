
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 unsigned int INTBIT (int ) ;
 int IRQ_S3C2412_CF ;
 int IRQ_S3C2412_SDI ;
 int S3C2410_INTSUBMSK ;
 int S3C2410_SUBSRCPND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void s3c2412_irq_demux_cfsdi(unsigned int irq, struct irq_desc *desc)
{
 unsigned int subsrc, submsk;

 subsrc = __raw_readl(S3C2410_SUBSRCPND);
 submsk = __raw_readl(S3C2410_INTSUBMSK);

 subsrc &= ~submsk;

 if (subsrc & INTBIT(IRQ_S3C2412_SDI))
  generic_handle_irq(IRQ_S3C2412_SDI);

 if (subsrc & INTBIT(IRQ_S3C2412_CF))
  generic_handle_irq(IRQ_S3C2412_CF);
}
