
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int num_counters; } ;
struct TYPE_3__ {int cnt_lo; int cnt_hi; } ;


 int PMCR (int) ;
 int PMCTRH (int) ;
 int PMCTRL (int) ;
 int __raw_writel (int ,int ) ;
 int __raw_writew (int ,int ) ;
 TYPE_2__ op_model_sh7750_ops ;
 TYPE_1__* regcache ;

__attribute__((used)) static void sh7750_ppc_cpu_setup(void *args)
{
 unsigned int counters = op_model_sh7750_ops.num_counters;
 int i;

 for (i = 0; i < counters; i++) {
  __raw_writew(0, PMCR(i));
  __raw_writel(regcache[i].cnt_hi, PMCTRH(i));
  __raw_writel(regcache[i].cnt_lo, PMCTRL(i));
 }
}
