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
typedef  unsigned short uint ;
struct UnixRup {int /*<<< orphan*/  RupLock; struct CmdBlk* CmdsWaitingP; TYPE_1__* RupP; struct CmdBlk* CmdPendingP; } ;
struct PKT {int dummy; } ;
struct Host {int /*<<< orphan*/  Caddr; int /*<<< orphan*/  (* Copy ) (TYPE_2__*,int /*<<< orphan*/ ,int) ;struct UnixRup* UnixRups; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct CmdBlk {int (* PreFuncP ) (int /*<<< orphan*/ ,struct CmdBlk*) ;struct CmdBlk* NextP; TYPE_2__ Packet; int /*<<< orphan*/  PreArg; } ;
struct TYPE_3__ {int /*<<< orphan*/  txcontrol; int /*<<< orphan*/  txpkt; } ;

/* Variables and functions */
 scalar_t__ LINKS_PER_UNIT ; 
 scalar_t__ MAX_RUP ; 
 int /*<<< orphan*/  FUNC0 (struct CmdBlk*) ; 
 int /*<<< orphan*/  RIO_DEBUG_CMD ; 
 int RIO_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TX_PACKET_READY ; 
 scalar_t__ TX_RUP_INACTIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct CmdBlk*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct Host *HostP, uint Rup, struct CmdBlk *CmdBlkP)
{
	struct CmdBlk **Base;
	struct UnixRup *UnixRupP;
	unsigned long flags;

	if (Rup >= (unsigned short) (MAX_RUP + LINKS_PER_UNIT)) {
		FUNC3(RIO_DEBUG_CMD, "Illegal rup number %d in RIOQueueCmdBlk\n", Rup);
		FUNC0(CmdBlkP);
		return RIO_FAIL;
	}

	UnixRupP = &HostP->UnixRups[Rup];

	FUNC4(&UnixRupP->RupLock, flags);

	/*
	 ** If the RUP is currently inactive, then put the request
	 ** straight on the RUP....
	 */
	if ((UnixRupP->CmdsWaitingP == NULL) && (UnixRupP->CmdPendingP == NULL) && (FUNC2(&UnixRupP->RupP->txcontrol) == TX_RUP_INACTIVE) && (CmdBlkP->PreFuncP ? (*CmdBlkP->PreFuncP) (CmdBlkP->PreArg, CmdBlkP)
																	     : 1)) {
		FUNC3(RIO_DEBUG_CMD, "RUP inactive-placing command straight on. Cmd byte is 0x%x\n", CmdBlkP->Packet.data[0]);

		/*
		 ** Whammy! blat that pack!
		 */
		HostP->Copy(&CmdBlkP->Packet, FUNC1(HostP->Caddr, FUNC2(&UnixRupP->RupP->txpkt)), sizeof(struct PKT));

		/*
		 ** place command packet on the pending position.
		 */
		UnixRupP->CmdPendingP = CmdBlkP;

		/*
		 ** set the command register
		 */
		FUNC8(TX_PACKET_READY, &UnixRupP->RupP->txcontrol);

		FUNC5(&UnixRupP->RupLock, flags);

		return 0;
	}
	FUNC3(RIO_DEBUG_CMD, "RUP active - en-queing\n");

	if (UnixRupP->CmdsWaitingP != NULL)
		FUNC3(RIO_DEBUG_CMD, "Rup active - command waiting\n");
	if (UnixRupP->CmdPendingP != NULL)
		FUNC3(RIO_DEBUG_CMD, "Rup active - command pending\n");
	if (FUNC2(&UnixRupP->RupP->txcontrol) != TX_RUP_INACTIVE)
		FUNC3(RIO_DEBUG_CMD, "Rup active - command rup not ready\n");

	Base = &UnixRupP->CmdsWaitingP;

	FUNC3(RIO_DEBUG_CMD, "First try to queue cmdblk %p at %p\n", CmdBlkP, Base);

	while (*Base) {
		FUNC3(RIO_DEBUG_CMD, "Command cmdblk %p here\n", *Base);
		Base = &((*Base)->NextP);
		FUNC3(RIO_DEBUG_CMD, "Now try to queue cmd cmdblk %p at %p\n", CmdBlkP, Base);
	}

	FUNC3(RIO_DEBUG_CMD, "Will queue cmdblk %p at %p\n", CmdBlkP, Base);

	*Base = CmdBlkP;

	CmdBlkP->NextP = NULL;

	FUNC5(&UnixRupP->RupLock, flags);

	return 0;
}