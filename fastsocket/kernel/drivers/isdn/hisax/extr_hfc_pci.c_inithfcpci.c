
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long data; void* function; } ;
struct IsdnCardState {TYPE_1__* bcs; TYPE_2__ dbusytimer; } ;
struct TYPE_3__ {void* BC_Close; void* BC_SetStack; } ;


 void* close_hfcpci ;
 scalar_t__ hfcpci_dbusy_timer ;
 int init_timer (TYPE_2__*) ;
 int mode_hfcpci (TYPE_1__*,int ,int) ;
 void* setstack_2b ;

__attribute__((used)) static void
inithfcpci(struct IsdnCardState *cs)
{
 cs->bcs[0].BC_SetStack = setstack_2b;
 cs->bcs[1].BC_SetStack = setstack_2b;
 cs->bcs[0].BC_Close = close_hfcpci;
 cs->bcs[1].BC_Close = close_hfcpci;
 cs->dbusytimer.function = (void *) hfcpci_dbusy_timer;
 cs->dbusytimer.data = (long) cs;
 init_timer(&cs->dbusytimer);
 mode_hfcpci(cs->bcs, 0, 0);
 mode_hfcpci(cs->bcs + 1, 0, 1);
}
