#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int Word_t ;
struct TYPE_8__ {unsigned int numPorts; } ;
struct TYPE_7__ {scalar_t__ BusType; unsigned int* AiopIntrBits; } ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 scalar_t__ POLL_PERIOD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ isPCI ; 
 scalar_t__ jiffies ; 
 int max_board ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__* rcktpt_io_addr ; 
 TYPE_6__* rocketModel ; 
 int /*<<< orphan*/  rocket_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rp_num_ports_open ; 
 int /*<<< orphan*/ * rp_table ; 
 TYPE_1__* FUNC5 (int) ; 
 unsigned char FUNC6 (TYPE_1__*,int) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 unsigned int FUNC8 (TYPE_1__*) ; 
 unsigned int* xmit_flags ; 

__attribute__((used)) static void FUNC9(unsigned long dummy)
{
	CONTROLLER_t *ctlp;
	int ctrl, aiop, ch, line;
	unsigned int xmitmask, i;
	unsigned int CtlMask;
	unsigned char AiopMask;
	Word_t bit;

	/*  Walk through all the boards (ctrl's) */
	for (ctrl = 0; ctrl < max_board; ctrl++) {
		if (rcktpt_io_addr[ctrl] <= 0)
			continue;

		/*  Get a ptr to the board's control struct */
		ctlp = FUNC5(ctrl);

		/*  Get the interrupt status from the board */
#ifdef CONFIG_PCI
		if (ctlp->BusType == isPCI)
			CtlMask = sPCIGetControllerIntStatus(ctlp);
		else
#endif
			CtlMask = FUNC7(ctlp);

		/*  Check if any AIOP read bits are set */
		for (aiop = 0; CtlMask; aiop++) {
			bit = ctlp->AiopIntrBits[aiop];
			if (CtlMask & bit) {
				CtlMask &= ~bit;
				AiopMask = FUNC6(ctlp, aiop);

				/*  Check if any port read bits are set */
				for (ch = 0; AiopMask;  AiopMask >>= 1, ch++) {
					if (AiopMask & 1) {

						/*  Get the line number (/dev/ttyRx number). */
						/*  Read the data from the port. */
						line = FUNC0(ctrl, aiop, ch);
						FUNC4(rp_table[line]);
					}
				}
			}
		}

		xmitmask = xmit_flags[ctrl];

		/*
		 *  xmit_flags contains bit-significant flags, indicating there is data
		 *  to xmit on the port. Bit 0 is port 0 on this board, bit 1 is port 
		 *  1, ... (32 total possible).  The variable i has the aiop and ch 
		 *  numbers encoded in it (port 0-7 are aiop0, 8-15 are aiop1, etc).
		 */
		if (xmitmask) {
			for (i = 0; i < rocketModel[ctrl].numPorts; i++) {
				if (xmitmask & (1 << i)) {
					aiop = (i & 0x18) >> 3;
					ch = i & 0x07;
					line = FUNC0(ctrl, aiop, ch);
					FUNC3(rp_table[line]);
				}
			}
		}
	}

	/*
	 * Reset the timer so we get called at the next clock tick (10ms).
	 */
	if (FUNC1(&rp_num_ports_open))
		FUNC2(&rocket_timer, jiffies + POLL_PERIOD);
}