
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_S3C2443_DMA0 ;
 int s3c2443_irq_demux (int ,int) ;

__attribute__((used)) static void s3c2443_irq_demux_dma(unsigned int irq, struct irq_desc *desc)
{
 s3c2443_irq_demux(IRQ_S3C2443_DMA0, 6);
}
