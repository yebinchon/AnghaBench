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
typedef  scalar_t__ uint32_t ;
struct iscsi_session {scalar_t__ exp_cmdsn; scalar_t__ max_cmdsn; TYPE_1__* leadconn; } ;
struct TYPE_2__ {int /*<<< orphan*/  mgmtqueue; int /*<<< orphan*/  cmdqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iscsi_session *session,
				 uint32_t exp_cmdsn, uint32_t max_cmdsn)
{
	/*
	 * standard specifies this check for when to update expected and
	 * max sequence numbers
	 */
	if (FUNC1(max_cmdsn, exp_cmdsn - 1))
		return;

	if (exp_cmdsn != session->exp_cmdsn &&
	    !FUNC1(exp_cmdsn, session->exp_cmdsn))
		session->exp_cmdsn = exp_cmdsn;

	if (max_cmdsn != session->max_cmdsn &&
	    !FUNC1(max_cmdsn, session->max_cmdsn)) {
		session->max_cmdsn = max_cmdsn;
		/*
		 * if the window closed with IO queued, then kick the
		 * xmit thread
		 */
		if (!FUNC2(&session->leadconn->cmdqueue) ||
		    !FUNC2(&session->leadconn->mgmtqueue))
			FUNC0(session->leadconn);
	}
}