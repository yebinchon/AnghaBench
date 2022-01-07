
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HW_EVENT_MAPLE_DMA ;
 int IRQF_SHARED ;
 int maple_dma_interrupt ;
 int maple_unsupported_device ;
 int request_irq (int ,int ,int ,char*,int *) ;

__attribute__((used)) static int maple_set_dma_interrupt_handler(void)
{
 return request_irq(HW_EVENT_MAPLE_DMA, maple_dma_interrupt,
  IRQF_SHARED, "maple bus DMA", &maple_unsupported_device);
}
