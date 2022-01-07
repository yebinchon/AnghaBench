
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int res_irq; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int SPORTSTER_RESET ;
 scalar_t__ SPORTSTER_RES_IRQ ;
 int byteout (scalar_t__,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void
reset_sportster(struct IsdnCardState *cs)
{
 cs->hw.spt.res_irq |= SPORTSTER_RESET;
 byteout(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ, cs->hw.spt.res_irq);
 mdelay(10);
 cs->hw.spt.res_irq &= ~SPORTSTER_RESET;
 byteout(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ, cs->hw.spt.res_irq);
 mdelay(10);
}
