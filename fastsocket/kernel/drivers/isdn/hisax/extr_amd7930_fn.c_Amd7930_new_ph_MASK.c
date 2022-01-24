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
typedef  size_t u_char ;
struct TYPE_3__ {size_t old_state; size_t ph_state; } ;
struct TYPE_4__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; TYPE_2__ dc; scalar_t__ tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int,char*) ; 
 int CONFIRM ; 
 int HW_DEACTIVATE ; 
 int HW_INFO2 ; 
 int HW_INFO4_P8 ; 
 int HW_POWERUP ; 
 int HW_RESET ; 
 int HW_RSYNC ; 
 int INDICATION ; 
 int L1_DEB_ISAC ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,size_t,size_t,size_t,size_t) ; 
 size_t* i430States ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int /*<<< orphan*/ *) ; 
 int* stateHelper ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct IsdnCardState *cs)
{
        u_char index = stateHelper[cs->dc.amd7930.old_state]*8 + stateHelper[cs->dc.amd7930.ph_state]-1;
        u_char message = i430States[index];

        if (cs->debug & L1_DEB_ISAC)
		FUNC2(cs, "AMD7930: new_ph %d, old_ph %d, message %d, index %d",
                        cs->dc.amd7930.ph_state, cs->dc.amd7930.old_state, message & 0x0f, index);

        cs->dc.amd7930.old_state = cs->dc.amd7930.ph_state;

        /* abort transmit if nessesary */
        if ((message & 0xf0) && (cs->tx_skb)) {
                FUNC4(cs, 0x21, 0xC2);
                FUNC4(cs, 0x21, 0x02);
        }

	switch (message & 0x0f) {

                case (1):
                        FUNC3(cs, HW_RESET | INDICATION, NULL);
                        FUNC0(cs);
                        break;
                case (2): /* init, Card starts in F3 */
                        FUNC3(cs, HW_DEACTIVATE | CONFIRM, NULL);
                        break;
                case (3):
                        FUNC3(cs, HW_DEACTIVATE | INDICATION, NULL);
                        break;
                case (4):
                        FUNC3(cs, HW_POWERUP | CONFIRM, NULL);
                        FUNC1(cs, 0x50, "HW_ENABLE REQUEST");
                        break;
                case (5):
			FUNC3(cs, HW_RSYNC | INDICATION, NULL);
                        break;
                case (6):
			FUNC3(cs, HW_INFO4_P8 | INDICATION, NULL);
                        break;
                case (7): /* init, Card starts in F7 */
			FUNC3(cs, HW_RSYNC | INDICATION, NULL);
			FUNC3(cs, HW_INFO4_P8 | INDICATION, NULL);
                        break;
                case (8):
                        FUNC3(cs, HW_POWERUP | CONFIRM, NULL);
                        /* fall through */
                case (9):
                        FUNC1(cs, 0x40, "HW_ENABLE REQ cleared if set");
			FUNC3(cs, HW_RSYNC | INDICATION, NULL);
			FUNC3(cs, HW_INFO2 | INDICATION, NULL);
			FUNC3(cs, HW_INFO4_P8 | INDICATION, NULL);
                        break;
                case (10):
                        FUNC1(cs, 0x40, "T3 expired, HW_ENABLE REQ cleared");
                        cs->dc.amd7930.old_state = 3;
                        break;
                case (11):
			FUNC3(cs, HW_INFO2 | INDICATION, NULL);
                        break;
		default:
			break;
	}
}