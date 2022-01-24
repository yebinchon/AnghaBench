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
struct iscsi_cls_session {int /*<<< orphan*/  unblock_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_eh_timer_workq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct iscsi_cls_session *session)
{
	FUNC1(iscsi_eh_timer_workq, &session->unblock_work);
	/*
	 * make sure all the events have completed before tell the driver
	 * it is safe
	 */
	FUNC0(iscsi_eh_timer_workq);
}