#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ti_ohci {int /*<<< orphan*/  at_resp_context; int /*<<< orphan*/  at_req_context; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;
typedef  enum devctl_cmd { ____Placeholder_devctl_cmd } devctl_cmd ;

/* Variables and functions */
#define  ACT_CYCLE_MASTER 139 
#define  CANCEL_REQUESTS 138 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  GET_CYCLE_COUNTER 137 
 int /*<<< orphan*/  KERN_ERR ; 
#define  LONG_RESET 136 
#define  LONG_RESET_FORCE_ROOT 135 
#define  LONG_RESET_NO_FORCE_ROOT 134 
 int /*<<< orphan*/  OHCI1394_IsochronousCycleTimer ; 
 int /*<<< orphan*/  OHCI1394_LinkControlClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_CycleMaster ; 
 int OHCI1394_LinkControl_CycleSource ; 
 int OHCI1394_LinkControl_CycleTimerEnable ; 
 int /*<<< orphan*/  OHCI1394_NodeID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
#define  RESET_BUS 133 
#define  SET_BUS_ID 132 
#define  SET_CYCLE_COUNTER 131 
#define  SHORT_RESET 130 
#define  SHORT_RESET_FORCE_ROOT 129 
#define  SHORT_RESET_NO_FORCE_ROOT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ti_ohci*,int) ; 
 int FUNC5 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_ohci*,int,int) ; 

__attribute__((used)) static int FUNC8(struct hpsb_host *host, enum devctl_cmd cmd, int arg)
{
	struct ti_ohci *ohci = host->hostdata;
	int retval = 0, phy_reg;

	switch (cmd) {
	case RESET_BUS:
		switch (arg) {
		case SHORT_RESET:
			phy_reg = FUNC4(ohci, 5);
			phy_reg |= 0x40;
			FUNC7(ohci, 5, phy_reg); /* set ISBR */
			break;
		case LONG_RESET:
			phy_reg = FUNC4(ohci, 1);
			phy_reg |= 0x40;
			FUNC7(ohci, 1, phy_reg); /* set IBR */
			break;
		case SHORT_RESET_NO_FORCE_ROOT:
			phy_reg = FUNC4(ohci, 1);
			if (phy_reg & 0x80) {
				phy_reg &= ~0x80;
				FUNC7(ohci, 1, phy_reg); /* clear RHB */
			}

			phy_reg = FUNC4(ohci, 5);
			phy_reg |= 0x40;
			FUNC7(ohci, 5, phy_reg); /* set ISBR */
			break;
		case LONG_RESET_NO_FORCE_ROOT:
			phy_reg = FUNC4(ohci, 1);
			phy_reg &= ~0x80;
			phy_reg |= 0x40;
			FUNC7(ohci, 1, phy_reg); /* clear RHB, set IBR */
			break;
		case SHORT_RESET_FORCE_ROOT:
			phy_reg = FUNC4(ohci, 1);
			if (!(phy_reg & 0x80)) {
				phy_reg |= 0x80;
				FUNC7(ohci, 1, phy_reg); /* set RHB */
			}

			phy_reg = FUNC4(ohci, 5);
			phy_reg |= 0x40;
			FUNC7(ohci, 5, phy_reg); /* set ISBR */
			break;
		case LONG_RESET_FORCE_ROOT:
			phy_reg = FUNC4(ohci, 1);
			phy_reg |= 0xc0;
			FUNC7(ohci, 1, phy_reg); /* set RHB and IBR */
			break;
		default:
			retval = -1;
		}
		break;

	case GET_CYCLE_COUNTER:
		retval = FUNC5(ohci, OHCI1394_IsochronousCycleTimer);
		break;

	case SET_CYCLE_COUNTER:
		FUNC6(ohci, OHCI1394_IsochronousCycleTimer, arg);
		break;

	case SET_BUS_ID:
		FUNC1(KERN_ERR, "devctl command SET_BUS_ID err");
		break;

	case ACT_CYCLE_MASTER:
		if (arg) {
			/* check if we are root and other nodes are present */
			u32 nodeId = FUNC5(ohci, OHCI1394_NodeID);
			if ((nodeId & (1<<30)) && (nodeId & 0x3f)) {
				/*
				 * enable cycleTimer, cycleMaster
				 */
				FUNC0("Cycle master enabled");
				FUNC6(ohci, OHCI1394_LinkControlSet,
					  OHCI1394_LinkControl_CycleTimerEnable |
					  OHCI1394_LinkControl_CycleMaster);
			}
		} else {
			/* disable cycleTimer, cycleMaster, cycleSource */
			FUNC6(ohci, OHCI1394_LinkControlClear,
				  OHCI1394_LinkControl_CycleTimerEnable |
				  OHCI1394_LinkControl_CycleMaster |
				  OHCI1394_LinkControl_CycleSource);
		}
		break;

	case CANCEL_REQUESTS:
		FUNC0("Cancel request received");
		FUNC3(&ohci->at_req_context);
		FUNC3(&ohci->at_resp_context);
		break;

	default:
		FUNC2(KERN_ERR, "ohci_devctl cmd %d not implemented yet",
			cmd);
		break;
	}
	return retval;
}