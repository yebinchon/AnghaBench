
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct IsdnCardState {TYPE_3__* bcs; } ;
struct TYPE_8__ {long data; void* function; } ;
struct TYPE_5__ {TYPE_4__ ftimer; } ;
struct TYPE_6__ {TYPE_1__ isar; } ;
struct TYPE_7__ {TYPE_2__ hw; void* BC_Close; void* BC_SetStack; } ;


 void* close_isarstate ;
 scalar_t__ ftimer_handler ;
 int init_timer (TYPE_4__*) ;
 void* setstack_isar ;

void initisar(struct IsdnCardState *cs)
{
 cs->bcs[0].BC_SetStack = setstack_isar;
 cs->bcs[1].BC_SetStack = setstack_isar;
 cs->bcs[0].BC_Close = close_isarstate;
 cs->bcs[1].BC_Close = close_isarstate;
 cs->bcs[0].hw.isar.ftimer.function = (void *) ftimer_handler;
 cs->bcs[0].hw.isar.ftimer.data = (long) &cs->bcs[0];
 init_timer(&cs->bcs[0].hw.isar.ftimer);
 cs->bcs[1].hw.isar.ftimer.function = (void *) ftimer_handler;
 cs->bcs[1].hw.isar.ftimer.data = (long) &cs->bcs[1];
 init_timer(&cs->bcs[1].hw.isar.ftimer);
}
