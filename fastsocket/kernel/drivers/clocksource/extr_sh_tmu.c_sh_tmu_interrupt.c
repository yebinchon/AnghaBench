
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int (* event_handler ) (TYPE_1__*) ;} ;
struct sh_tmu_priv {TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 int IRQ_HANDLED ;
 int TCR ;
 int sh_tmu_write (struct sh_tmu_priv*,int ,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t sh_tmu_interrupt(int irq, void *dev_id)
{
 struct sh_tmu_priv *p = dev_id;


 if (p->ced.mode == CLOCK_EVT_MODE_ONESHOT)
  sh_tmu_write(p, TCR, 0x0000);
 else
  sh_tmu_write(p, TCR, 0x0020);


 p->ced.event_handler(&p->ced);
 return IRQ_HANDLED;
}
