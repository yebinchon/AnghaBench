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
struct iscsi_transport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct iscsi_cls_session {int creator; int recovery_tmo; struct iscsi_cls_session* dd_data; TYPE_1__ dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  unbind_work; int /*<<< orphan*/  block_work; int /*<<< orphan*/  unblock_work; int /*<<< orphan*/  sess_list; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  state; struct iscsi_transport* transport; } ;
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_SESSION_FREE ; 
 int /*<<< orphan*/  __iscsi_block_session ; 
 int /*<<< orphan*/  __iscsi_unbind_session ; 
 int /*<<< orphan*/  __iscsi_unblock_session ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  iscsi_scan_session ; 
 int /*<<< orphan*/  iscsi_session_release ; 
 struct iscsi_cls_session* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  session_recovery_timedout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct iscsi_cls_session *
FUNC8(struct Scsi_Host *shost, struct iscsi_transport *transport,
		    int dd_size)
{
	struct iscsi_cls_session *session;

	session = FUNC5(sizeof(*session) + dd_size,
			  GFP_KERNEL);
	if (!session)
		return NULL;

	session->transport = transport;
	session->creator = -1;
	session->recovery_tmo = 120;
	session->state = ISCSI_SESSION_FREE;
	FUNC0(&session->recovery_work, session_recovery_timedout);
	FUNC1(&session->sess_list);
	FUNC2(&session->unblock_work, __iscsi_unblock_session);
	FUNC2(&session->block_work, __iscsi_block_session);
	FUNC2(&session->unbind_work, __iscsi_unbind_session);
	FUNC2(&session->scan_work, iscsi_scan_session);
	FUNC7(&session->lock);

	/* this is released in the dev's release function */
	FUNC6(shost);
	session->dev.parent = &shost->shost_gendev;
	session->dev.release = iscsi_session_release;
	FUNC4(&session->dev);
	if (dd_size)
		session->dd_data = &session[1];

	FUNC3(session, "Completed session allocation\n");
	return session;
}