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
struct iscsi_cls_session {int state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_TRANSPORT_FAILFAST ; 
#define  ISCSI_SESSION_FAILED 130 
#define  ISCSI_SESSION_FREE 129 
#define  ISCSI_SESSION_LOGGED_IN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(struct iscsi_cls_session *session)
{
	unsigned long flags;
	int err;

	FUNC0(&session->lock, flags);
	switch (session->state) {
	case ISCSI_SESSION_LOGGED_IN:
		err = 0;
		break;
	case ISCSI_SESSION_FAILED:
		err = DID_IMM_RETRY << 16;
		break;
	case ISCSI_SESSION_FREE:
		err = DID_TRANSPORT_FAILFAST << 16;
		break;
	default:
		err = DID_NO_CONNECT << 16;
		break;
	}
	FUNC1(&session->lock, flags);
	return err;
}