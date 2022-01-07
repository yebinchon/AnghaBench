
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * res; int car_rmr; } ;
struct TYPE_4__ {TYPE_1__ im_clkrst; } ;


 int MSR_DR ;
 int MSR_EE ;
 int MSR_IR ;
 int MSR_ME ;
 int RMR_CSRE ;
 TYPE_2__* cpm2_immr ;
 int in_8 (int *) ;
 int local_irq_disable () ;
 int mfmsr () ;
 int mtmsr (int) ;
 int panic (char*) ;
 int setbits32 (int *,int ) ;

void pq2_restart(char *cmd)
{
 local_irq_disable();
 setbits32(&cpm2_immr->im_clkrst.car_rmr, RMR_CSRE);


 mtmsr(mfmsr() & ~(MSR_ME | MSR_EE | MSR_IR | MSR_DR));
 in_8(&cpm2_immr->im_clkrst.res[0]);

 panic("Restart failed\n");
}
