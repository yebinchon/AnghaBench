
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ expires; } ;
struct TYPE_6__ {TYPE_3__ arcofitimer; } ;
struct TYPE_7__ {TYPE_1__ isac; } ;
struct IsdnCardState {TYPE_2__ dc; int HW_Flags; } ;


 int ARCOFI_TIMER_VALUE ;
 int FLG_ARCOFI_TIMER ;
 int HZ ;
 int add_timer (TYPE_3__*) ;
 int del_timer (TYPE_3__*) ;
 int init_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
add_arcofi_timer(struct IsdnCardState *cs) {
 if (test_and_set_bit(FLG_ARCOFI_TIMER, &cs->HW_Flags)) {
  del_timer(&cs->dc.isac.arcofitimer);
 }
 init_timer(&cs->dc.isac.arcofitimer);
 cs->dc.isac.arcofitimer.expires = jiffies + ((ARCOFI_TIMER_VALUE * HZ)/1000);
 add_timer(&cs->dc.isac.arcofitimer);
}
