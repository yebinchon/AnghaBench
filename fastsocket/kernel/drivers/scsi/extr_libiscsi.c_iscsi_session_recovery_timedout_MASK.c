#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iscsi_session {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* leadconn; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ehwait; } ;

/* Variables and functions */
 scalar_t__ ISCSI_STATE_LOGGED_IN ; 
 scalar_t__ ISCSI_STATE_RECOVERY_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_cls_session *cls_session)
{
	struct iscsi_session *session = cls_session->dd_data;

	FUNC0(&session->lock);
	if (session->state != ISCSI_STATE_LOGGED_IN) {
		session->state = ISCSI_STATE_RECOVERY_FAILED;
		if (session->leadconn)
			FUNC2(&session->leadconn->ehwait);
	}
	FUNC1(&session->lock);
}