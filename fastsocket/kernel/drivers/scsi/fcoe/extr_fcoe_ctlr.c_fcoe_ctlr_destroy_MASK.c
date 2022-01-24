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
struct fcoe_ctlr {int /*<<< orphan*/  timer_work; int /*<<< orphan*/  timer; int /*<<< orphan*/  ctlr_mutex; int /*<<< orphan*/  fip_recv_list; int /*<<< orphan*/  recv_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIP_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct fcoe_ctlr *fip)
{
	FUNC0(&fip->recv_work);
	FUNC6(&fip->fip_recv_list);

	FUNC4(&fip->ctlr_mutex);
	FUNC3(fip, FIP_ST_DISABLED);
	FUNC2(fip);
	FUNC5(&fip->ctlr_mutex);
	FUNC1(&fip->timer);
	FUNC0(&fip->timer_work);
}