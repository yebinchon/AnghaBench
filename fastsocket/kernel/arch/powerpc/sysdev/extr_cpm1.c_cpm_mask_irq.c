
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpic_cimr; } ;
struct TYPE_3__ {scalar_t__ hwirq; } ;


 int clrbits32 (int *,int) ;
 TYPE_2__* cpic_reg ;
 TYPE_1__* irq_map ;

__attribute__((used)) static void cpm_mask_irq(unsigned int irq)
{
 unsigned int cpm_vec = (unsigned int)irq_map[irq].hwirq;

 clrbits32(&cpic_reg->cpic_cimr, (1 << cpm_vec));
}
