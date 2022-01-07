
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_S3CUART_RX0 ;
 int S3C2410_INTSUBMSK ;
 int S3C2410_SUBSRCPND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (unsigned int) ;
 int irqdbf2 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void s3c_irq_demux_uart(unsigned int start)
{
 unsigned int subsrc, submsk;
 unsigned int offset = start - IRQ_S3CUART_RX0;




 subsrc = __raw_readl(S3C2410_SUBSRCPND);
 submsk = __raw_readl(S3C2410_INTSUBMSK);

 irqdbf2("s3c_irq_demux_uart: start=%d (%d), subsrc=0x%08x,0x%08x\n",
  start, offset, subsrc, submsk);

 subsrc &= ~submsk;
 subsrc >>= offset;
 subsrc &= 7;

 if (subsrc != 0) {
  if (subsrc & 1)
   generic_handle_irq(start);

  if (subsrc & 2)
   generic_handle_irq(start+1);

  if (subsrc & 4)
   generic_handle_irq(start+2);
 }
}
