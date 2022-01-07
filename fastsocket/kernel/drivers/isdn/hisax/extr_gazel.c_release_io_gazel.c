
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipac; int cfg_reg; int * hscx; } ;
struct TYPE_4__ {TYPE_1__ gazel; } ;
struct IsdnCardState {int subtyp; TYPE_2__ hw; } ;






 int release_region (int ,int) ;

__attribute__((used)) static void
release_io_gazel(struct IsdnCardState *cs)
{
 unsigned int i;

 switch (cs->subtyp) {
  case 131:
   for (i = 0x0000; i < 0xC000; i += 0x1000)
    release_region(i + cs->hw.gazel.hscx[0], 16);
   release_region(0xC000 + cs->hw.gazel.hscx[0], 1);
   break;

  case 130:
   release_region(cs->hw.gazel.hscx[0], 0x100);
   release_region(cs->hw.gazel.cfg_reg, 0x80);
   break;

  case 128:
   release_region(cs->hw.gazel.ipac, 0x8);
   release_region(cs->hw.gazel.cfg_reg, 0x80);
   break;

  case 129:
   release_region(cs->hw.gazel.ipac, 8);
   break;
 }
}
