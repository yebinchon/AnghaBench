
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* hscxfifo; scalar_t__* hscx; scalar_t__ isacfifo; scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int release_region (scalar_t__,int) ;

__attribute__((used)) static inline void
release_ioregs(struct IsdnCardState *cs, int mask)
{
 release_region(cs->hw.avm.cfg_reg, 8);
 if (mask & 1)
  release_region(cs->hw.avm.isac + 32, 32);
 if (mask & 2)
  release_region(cs->hw.avm.isacfifo, 1);
 if (mask & 4)
  release_region(cs->hw.avm.hscx[0] + 32, 32);
 if (mask & 8)
  release_region(cs->hw.avm.hscxfifo[0], 1);
 if (mask & 0x10)
  release_region(cs->hw.avm.hscx[1] + 32, 32);
 if (mask & 0x20)
  release_region(cs->hw.avm.hscxfifo[1], 1);
}
