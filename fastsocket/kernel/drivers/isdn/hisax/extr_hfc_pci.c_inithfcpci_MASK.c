#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long data; void* function; } ;
struct IsdnCardState {TYPE_1__* bcs; TYPE_2__ dbusytimer; } ;
struct TYPE_3__ {void* BC_Close; void* BC_SetStack; } ;

/* Variables and functions */
 void* close_hfcpci ; 
 scalar_t__ hfcpci_dbusy_timer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* setstack_2b ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs)
{
	cs->bcs[0].BC_SetStack = setstack_2b;
	cs->bcs[1].BC_SetStack = setstack_2b;
	cs->bcs[0].BC_Close = close_hfcpci;
	cs->bcs[1].BC_Close = close_hfcpci;
	cs->dbusytimer.function = (void *) hfcpci_dbusy_timer;
	cs->dbusytimer.data = (long) cs;
	FUNC0(&cs->dbusytimer);
	FUNC1(cs->bcs, 0, 0);
	FUNC1(cs->bcs + 1, 0, 1);
}