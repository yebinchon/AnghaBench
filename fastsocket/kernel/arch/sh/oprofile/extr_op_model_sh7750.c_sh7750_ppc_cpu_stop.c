
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_counters; } ;


 int PMCR (int) ;
 int PMCR_PMEN ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 TYPE_1__ op_model_sh7750_ops ;

__attribute__((used)) static void sh7750_ppc_cpu_stop(void *args)
{
 unsigned int counters = op_model_sh7750_ops.num_counters;
 int i;


 for (i = 0; i < counters; i++)
  __raw_writew(__raw_readw(PMCR(i)) & ~PMCR_PMEN, PMCR(i));
}
