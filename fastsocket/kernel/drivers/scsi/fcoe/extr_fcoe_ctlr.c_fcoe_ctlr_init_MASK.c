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
struct fcoe_ctlr {int mode; int /*<<< orphan*/  fip_recv_list; int /*<<< orphan*/  recv_work; int /*<<< orphan*/  timer_work; int /*<<< orphan*/  timer; int /*<<< orphan*/  flogi_oxid; int /*<<< orphan*/  ctlr_lock; int /*<<< orphan*/  ctlr_mutex; int /*<<< orphan*/  fcfs; } ;
typedef  enum fip_state { ____Placeholder_fip_state } fip_state ;

/* Variables and functions */
 int /*<<< orphan*/  FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  FIP_ST_LINK_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_ctlr_recv_work ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_ctlr_timeout ; 
 int /*<<< orphan*/  fcoe_ctlr_timer_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct fcoe_ctlr *fip, enum fip_state mode)
{
	FUNC2(fip, FIP_ST_LINK_WAIT);
	fip->mode = mode;
	FUNC0(&fip->fcfs);
	FUNC3(&fip->ctlr_mutex);
	FUNC6(&fip->ctlr_lock);
	fip->flogi_oxid = FC_XID_UNKNOWN;
	FUNC4(&fip->timer, fcoe_ctlr_timeout, (unsigned long)fip);
	FUNC1(&fip->timer_work, fcoe_ctlr_timer_work);
	FUNC1(&fip->recv_work, fcoe_ctlr_recv_work);
	FUNC5(&fip->fip_recv_list);
}