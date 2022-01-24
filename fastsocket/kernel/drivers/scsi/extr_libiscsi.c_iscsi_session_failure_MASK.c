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
struct iscsi_session {scalar_t__ state; int /*<<< orphan*/  lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {TYPE_1__* cls_conn; } ;
struct device {int dummy; } ;
typedef  enum iscsi_err { ____Placeholder_iscsi_err } iscsi_err ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ISCSI_ERR_INVALID_HOST ; 
 scalar_t__ ISCSI_STATE_TERMINATE ; 
 struct device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iscsi_session *session,
			   enum iscsi_err err)
{
	struct iscsi_conn *conn;
	struct device *dev;

	FUNC4(&session->lock);
	conn = session->leadconn;
	if (session->state == ISCSI_STATE_TERMINATE || !conn) {
		FUNC5(&session->lock);
		return;
	}

	dev = FUNC0(&conn->cls_conn->dev);
	FUNC5(&session->lock);
	if (!dev)
	        return;
	/*
	 * if the host is being removed bypass the connection
	 * recovery initialization because we are going to kill
	 * the session.
	 */
	if (err == ISCSI_ERR_INVALID_HOST)
		FUNC1(conn->cls_conn, err);
	else
		FUNC2(conn, err);
	FUNC3(dev);
}