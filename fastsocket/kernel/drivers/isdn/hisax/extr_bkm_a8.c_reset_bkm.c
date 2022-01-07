
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ plx_adr; } ;
struct TYPE_3__ {TYPE_2__ ax; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_1__ hw; } ;


 scalar_t__ SCT_1 ;
 int mdelay (int) ;
 int wordin (scalar_t__) ;
 int wordout (scalar_t__,int) ;

__attribute__((used)) static void
reset_bkm(struct IsdnCardState *cs)
{
 if (cs->subtyp == SCT_1) {
  wordout(cs->hw.ax.plx_adr + 0x50, (wordin(cs->hw.ax.plx_adr + 0x50) & ~4));
  mdelay(10);

  wordout(cs->hw.ax.plx_adr + 0x50, (wordin(cs->hw.ax.plx_adr + 0x50) | 4));
  mdelay(10);
 }
}
