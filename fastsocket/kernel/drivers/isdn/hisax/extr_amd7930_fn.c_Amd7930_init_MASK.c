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
struct TYPE_3__ {int lmr1; int /*<<< orphan*/  ph_command; scalar_t__ old_state; scalar_t__ tx_xmtlen; } ;
struct TYPE_4__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  DC_Close; int /*<<< orphan*/  setstack_d; TYPE_2__ dc; } ;
typedef  int WORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  Amd7930_ph_command ; 
 int /*<<< orphan*/  DC_Close_Amd7930 ; 
 int L1_DEB_ISAC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*) ; 
 int* initAMD ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  setstack_Amd7930 ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int) ; 

void FUNC4(struct IsdnCardState *cs)
{
    WORD *ptr;
    BYTE cmd, cnt;

        if (cs->debug & L1_DEB_ISAC)
		FUNC1(cs, "Amd7930: initamd called");

        cs->dc.amd7930.tx_xmtlen = 0;
        cs->dc.amd7930.old_state = 0;
        cs->dc.amd7930.lmr1 = 0x40;
        cs->dc.amd7930.ph_command = Amd7930_ph_command;
	cs->setstack_d = setstack_Amd7930;
	cs->DC_Close = DC_Close_Amd7930;

	/* AMD Initialisation */
	for (ptr = initAMD; *ptr != 0xFFFF; ) {
		cmd = FUNC0(*ptr);

                /* read */
                if (*ptr++ >= 0x100) {
			if (cmd < 8)
                                /* reset register */
                                FUNC2(cs, cmd);
			else {
				FUNC3(cs, 0x00, cmd);
				for (cnt = *ptr++; cnt > 0; cnt--)
					FUNC2(cs, 0x01);
			}
		}
                /* write */
                else if (cmd < 8)
			FUNC3(cs, cmd, FUNC0(*ptr++));

		else {
			FUNC3(cs, 0x00, cmd);
			for (cnt = *ptr++; cnt > 0; cnt--)
				FUNC3(cs, 0x01, FUNC0(*ptr++));
		}
	}
}