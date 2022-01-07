
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; int timer; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int del_timer (int *) ;
 int release2bds0 (struct IsdnCardState*) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_hfcs(struct IsdnCardState *cs)
{
 release2bds0(cs);
 del_timer(&cs->hw.hfcD.timer);
 if (cs->hw.hfcD.addr)
  release_region(cs->hw.hfcD.addr, 2);
}
