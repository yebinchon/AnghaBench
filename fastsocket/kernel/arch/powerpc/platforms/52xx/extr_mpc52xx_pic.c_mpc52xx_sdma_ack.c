
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hwirq; } ;
struct TYPE_3__ {int IntPend; } ;


 int MPC52xx_IRQ_L2_MASK ;
 TYPE_2__* irq_map ;
 int out_be32 (int *,int) ;
 TYPE_1__* sdma ;

__attribute__((used)) static void mpc52xx_sdma_ack(unsigned int virq)
{
 int irq;
 int l2irq;

 irq = irq_map[virq].hwirq;
 l2irq = irq & MPC52xx_IRQ_L2_MASK;

 out_be32(&sdma->IntPend, 1 << l2irq);
}
