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
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct Port {TYPE_2__ gs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_TX_INTEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *ptr)
{
	struct Port *PortP = ptr;
	/* int hn; */

	FUNC1();

	/* hn = PortP->HostP - p->RIOHosts;

	   rio_dprintk (RIO_DEBUG_TTY, "Pushing host %d\n", hn);
	   rio_interrupt (-1,(void *) hn, NULL); */

	FUNC0((char *) PortP);

	/*
	 * In general we cannot count on "tx empty" interrupts, although
	 * the interrupt routine seems to be able to tell the difference.
	 */
	PortP->gs.port.flags &= ~GS_TX_INTEN;

	FUNC2();
}