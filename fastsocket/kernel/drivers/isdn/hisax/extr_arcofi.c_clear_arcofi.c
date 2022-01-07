
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arcofitimer; } ;
struct TYPE_4__ {TYPE_1__ isac; } ;
struct IsdnCardState {TYPE_2__ dc; int HW_Flags; } ;


 int FLG_ARCOFI_TIMER ;
 int del_timer (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void
clear_arcofi(struct IsdnCardState *cs) {
 if (test_and_clear_bit(FLG_ARCOFI_TIMER, &cs->HW_Flags)) {
  del_timer(&cs->dc.isac.arcofitimer);
 }
}
