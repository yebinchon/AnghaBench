
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arcofi_bc; int arcofi_wait; } ;
struct TYPE_4__ {TYPE_1__ isac; } ;
struct IsdnCardState {TYPE_2__ dc; } ;


 int ARCOFI_COP_5 ;
 int ARCOFI_START ;
 int arcofi_fsm (struct IsdnCardState*,int ,int *) ;
 int interruptible_sleep_on (int *) ;

__attribute__((used)) static void
set_arcofi(struct IsdnCardState *cs, int bc) {
 cs->dc.isac.arcofi_bc = bc;
 arcofi_fsm(cs, ARCOFI_START, &ARCOFI_COP_5);
 interruptible_sleep_on(&cs->dc.isac.arcofi_wait);
}
