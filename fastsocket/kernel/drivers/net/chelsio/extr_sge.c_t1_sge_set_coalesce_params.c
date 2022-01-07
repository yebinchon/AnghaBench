
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_params {int rx_coalesce_usecs; } ;
struct sge {int fixed_intrtimer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_SG_INTRTIMER ;
 int core_ticks_per_usec (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

int t1_sge_set_coalesce_params(struct sge *sge, struct sge_params *p)
{
 sge->fixed_intrtimer = p->rx_coalesce_usecs *
  core_ticks_per_usec(sge->adapter);
 writel(sge->fixed_intrtimer, sge->adapter->regs + A_SG_INTRTIMER);
 return 0;
}
