
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bus; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ SEDL_BUS_PCI ;
 scalar_t__ SEDL_SPEED_FAX ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_sedlbauer(struct IsdnCardState *cs)
{
 int bytecnt = 8;

 if (cs->subtyp == SEDL_SPEED_FAX) {
  bytecnt = 16;
 } else if (cs->hw.sedl.bus == SEDL_BUS_PCI) {
  bytecnt = 256;
 }
 if (cs->hw.sedl.cfg_reg)
  release_region(cs->hw.sedl.cfg_reg, bytecnt);
}
