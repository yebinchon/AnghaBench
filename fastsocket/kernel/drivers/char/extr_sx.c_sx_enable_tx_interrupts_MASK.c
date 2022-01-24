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
struct sx_port {TYPE_2__ gs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_TX_INTEN ; 
 int LOW_WATER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  hi_txipos ; 
 int /*<<< orphan*/  hi_txopos ; 
 int FUNC2 (struct sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sx_port*) ; 

__attribute__((used)) static void FUNC4(void *ptr)
{
	struct sx_port *port = ptr;
	int data_in_buffer;
	FUNC0();

	/* First transmit the characters that we're supposed to */
	FUNC3(port);

	/* The sx card will never interrupt us if we don't fill the buffer
	   past 25%. So we keep considering interrupts off if that's the case. */
	data_in_buffer = (FUNC2(port, hi_txipos) -
			  FUNC2(port, hi_txopos)) & 0xff;

	/* XXX Must be "HIGH_WATER" for SI card according to doc. */
	if (data_in_buffer < LOW_WATER)
		port->gs.port.flags &= ~GS_TX_INTEN;

	FUNC1();
}