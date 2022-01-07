
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {long data; void* function; } ;
struct TYPE_5__ {int arcofi_wait; TYPE_3__ arcofitimer; } ;
struct TYPE_4__ {TYPE_2__ isac; } ;
struct IsdnCardState {int HW_Flags; TYPE_1__ dc; } ;


 int HW_ARCOFI ;
 scalar_t__ arcofi_timer ;
 int init_timer (TYPE_3__*) ;
 int init_waitqueue_head (int *) ;
 int test_and_set_bit (int ,int *) ;

void
init_arcofi(struct IsdnCardState *cs) {
 cs->dc.isac.arcofitimer.function = (void *) arcofi_timer;
 cs->dc.isac.arcofitimer.data = (long) cs;
 init_timer(&cs->dc.isac.arcofitimer);
 init_waitqueue_head(&cs->dc.isac.arcofi_wait);
 test_and_set_bit(HW_ARCOFI, &cs->HW_Flags);
}
