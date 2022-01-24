#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct bnx2i_conn {TYPE_1__* ep; } ;
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_2__ ofld_timer; int /*<<< orphan*/  ofld_wait; } ;

/* Variables and functions */
 scalar_t__ EP_STATE_ULP_UPDATE_START ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  bnx2i_ep_ofld_timer ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cls_conn*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct bnx2i_conn *bnx2i_conn = conn->dd_data;

	bnx2i_conn->ep->state = EP_STATE_ULP_UPDATE_START;
	FUNC1(conn);

	/*
	 * this should normally not sleep for a long time so it should
	 * not disrupt the caller.
	 */
	bnx2i_conn->ep->ofld_timer.expires = 1 * HZ + jiffies;
	bnx2i_conn->ep->ofld_timer.function = bnx2i_ep_ofld_timer;
	bnx2i_conn->ep->ofld_timer.data = (unsigned long) bnx2i_conn->ep;
	FUNC0(&bnx2i_conn->ep->ofld_timer);
	/* update iSCSI context for this conn, wait for CNIC to complete */
	FUNC6(bnx2i_conn->ep->ofld_wait,
			bnx2i_conn->ep->state != EP_STATE_ULP_UPDATE_START);

	if (FUNC5(current))
		FUNC3(current);
	FUNC2(&bnx2i_conn->ep->ofld_timer);

	FUNC4(cls_conn);
	return 0;
}