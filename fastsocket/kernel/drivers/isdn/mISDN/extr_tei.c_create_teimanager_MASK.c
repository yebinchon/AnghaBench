#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  st; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  send; } ;
struct TYPE_7__ {int debug; int /*<<< orphan*/  state; int /*<<< orphan*/ * fsm; int /*<<< orphan*/  printdebug; struct manager* userdata; } ;
struct manager {int nextid; TYPE_2__ ch; int /*<<< orphan*/  datimer; TYPE_3__ deact; TYPE_2__ bcast; int /*<<< orphan*/  lastid; int /*<<< orphan*/  sendq; int /*<<< orphan*/  lock; int /*<<< orphan*/  layer2; } ;
struct TYPE_5__ {int /*<<< orphan*/  st; } ;
struct mISDNdevice {TYPE_2__* teimgr; TYPE_1__ D; } ;

/* Variables and functions */
 int DEBUG_MANAGER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GROUP_TEI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MISDN_ID_NONE ; 
 int /*<<< orphan*/  ST_L1_DEACT ; 
 int /*<<< orphan*/  TEI_SAPI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da_debug ; 
 int /*<<< orphan*/  deactfsm ; 
 int* debug ; 
 struct manager* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mgr_bcast ; 
 int /*<<< orphan*/  mgr_bcast_ctrl ; 
 int /*<<< orphan*/  mgr_ctrl ; 
 int /*<<< orphan*/  mgr_send ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct mISDNdevice *dev)
{
	struct manager *mgr;

	mgr = FUNC2(sizeof(struct manager), GFP_KERNEL);
	if (!mgr)
		return -ENOMEM;
	FUNC0(&mgr->layer2);
	FUNC4(&mgr->lock);
	FUNC6(&mgr->sendq);
	mgr->nextid = 1;
	mgr->lastid = MISDN_ID_NONE;
	mgr->ch.send = mgr_send;
	mgr->ch.ctrl = mgr_ctrl;
	mgr->ch.st = dev->D.st;
	FUNC5(&mgr->ch, TEI_SAPI, GROUP_TEI);
	FUNC1(&mgr->ch, dev->D.st);
	mgr->bcast.send = mgr_bcast;
	mgr->bcast.ctrl = mgr_bcast_ctrl;
	mgr->bcast.st = dev->D.st;
	FUNC5(&mgr->bcast, 0, GROUP_TEI);
	FUNC1(&mgr->bcast, dev->D.st);
	mgr->deact.debug = *debug & DEBUG_MANAGER;
	mgr->deact.userdata = mgr;
	mgr->deact.printdebug = da_debug;
	mgr->deact.fsm = &deactfsm;
	mgr->deact.state = ST_L1_DEACT;
	FUNC3(&mgr->deact, &mgr->datimer);
	dev->teimgr = &mgr->ch;
	return 0;
}