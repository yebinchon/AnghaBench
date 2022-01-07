
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_INTSUBMSK ;
 unsigned int S3C2410_IRQSUB (int ) ;
 int S3C2410_SUBSRCPND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static inline void s3c2443_irq_demux(unsigned int irq, unsigned int len)
{
 unsigned int subsrc, submsk;
 unsigned int end;




 subsrc = __raw_readl(S3C2410_SUBSRCPND);
 submsk = __raw_readl(S3C2410_INTSUBMSK);

 subsrc &= ~submsk;
 subsrc >>= (irq - S3C2410_IRQSUB(0));
 subsrc &= (1 << len)-1;

 end = len + irq;

 for (; irq < end && subsrc; irq++) {
  if (subsrc & 1)
   generic_handle_irq(irq);

  subsrc >>= 1;
 }
}
