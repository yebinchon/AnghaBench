
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * function; } ;
struct TYPE_5__ {scalar_t__ cfg_reg; TYPE_3__ timer; } ;
struct TYPE_4__ {TYPE_2__ saphir; } ;
struct IsdnCardState {TYPE_1__ hw; } ;


 scalar_t__ IRQ_REG ;
 int byteout (scalar_t__,int) ;
 int del_timer (TYPE_3__*) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_saphir(struct IsdnCardState *cs)
{
 byteout(cs->hw.saphir.cfg_reg + IRQ_REG, 0xff);
 del_timer(&cs->hw.saphir.timer);
 cs->hw.saphir.timer.function = ((void*)0);
 if (cs->hw.saphir.cfg_reg)
  release_region(cs->hw.saphir.cfg_reg, 6);
}
