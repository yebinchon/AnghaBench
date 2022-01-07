
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int ctx; scalar_t__ left; } ;


 int IRQ_HANDLED ;
 int MACEPAR_CONTEXT_DATA_BOUND ;
 TYPE_1__ parport_ip32_dma ;
 int parport_ip32_dma_setup_context (int ) ;
 int pr_trace (int *,char*,int,int ) ;

__attribute__((used)) static irqreturn_t parport_ip32_dma_interrupt(int irq, void *dev_id)
{
 if (parport_ip32_dma.left)
  pr_trace(((void*)0), "(%d): ctx=%d", irq, parport_ip32_dma.ctx);
 parport_ip32_dma_setup_context(MACEPAR_CONTEXT_DATA_BOUND);
 return IRQ_HANDLED;
}
