
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * extra; int base; int timer; scalar_t__ int_m2; } ;
struct TYPE_3__ {TYPE_2__ hfcsx; } ;
struct IsdnCardState {TYPE_1__ hw; } ;


 int HFCSX_CIRM ;
 int HFCSX_INT_M2 ;
 scalar_t__ HFCSX_RESET ;
 int Write_hfc (struct IsdnCardState*,int ,scalar_t__) ;
 int del_timer (int *) ;
 int kfree (int *) ;
 int msleep (int) ;
 int release_region (int ,int) ;

__attribute__((used)) static void
release_io_hfcsx(struct IsdnCardState *cs)
{
 cs->hw.hfcsx.int_m2 = 0;
 Write_hfc(cs, HFCSX_INT_M2, cs->hw.hfcsx.int_m2);
 Write_hfc(cs, HFCSX_CIRM, HFCSX_RESET);
 msleep(30);
 Write_hfc(cs, HFCSX_CIRM, 0);
 del_timer(&cs->hw.hfcsx.timer);
 release_region(cs->hw.hfcsx.base, 2);
 kfree(cs->hw.hfcsx.extra);
 cs->hw.hfcsx.extra = ((void*)0);
}
