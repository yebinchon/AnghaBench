
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; int timer; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int del_timer (int *) ;
 int release_region (scalar_t__,int) ;
 int releasehfc (struct IsdnCardState*) ;

__attribute__((used)) static void
release_io_TeleInt(struct IsdnCardState *cs)
{
 del_timer(&cs->hw.hfc.timer);
 releasehfc(cs);
 if (cs->hw.hfc.addr)
  release_region(cs->hw.hfc.addr, 2);
}
