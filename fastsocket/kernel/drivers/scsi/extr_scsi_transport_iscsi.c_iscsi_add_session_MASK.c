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
struct iscsi_cls_session {unsigned int target_id; int /*<<< orphan*/  sess_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  sid; } ;
struct iscsi_cls_host {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; struct iscsi_cls_host* shost_data; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_KEVENT_CREATE_SESSION ; 
 unsigned int ISCSI_MAX_TARGET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct iscsi_cls_session*,char*,...) ; 
 int /*<<< orphan*/  iscsi_get_next_target_id ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_cls_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_session_nr ; 
 struct Scsi_Host* FUNC7 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  sesslist ; 
 int /*<<< orphan*/  sesslock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct iscsi_cls_session *session, unsigned int target_id)
{
	struct Scsi_Host *shost = FUNC7(session);
	struct iscsi_cls_host *ihost;
	unsigned long flags;
	unsigned int id = target_id;
	int err;

	ihost = shost->shost_data;
	session->sid = FUNC1(1, &iscsi_session_nr);

	if (id == ISCSI_MAX_TARGET) {
		for (id = 0; id < ISCSI_MAX_TARGET; id++) {
			err = FUNC4(&shost->shost_gendev, &id,
						    iscsi_get_next_target_id);
			if (!err)
				break;
		}

		if (id == ISCSI_MAX_TARGET) {
			FUNC5(KERN_ERR, session,
						 "Too many iscsi targets. Max "
						 "number of targets is %d.\n",
						 ISCSI_MAX_TARGET - 1);
			err = -EOVERFLOW;
			goto release_host;
		}
	}
	session->target_id = id;

	FUNC2(&session->dev, "session%u", session->sid);
	err = FUNC3(&session->dev);
	if (err) {
		FUNC5(KERN_ERR, session,
					 "could not register session's dev\n");
		goto release_host;
	}
	FUNC12(&session->dev);

	FUNC10(&sesslock, flags);
	FUNC8(&session->sess_list, &sesslist);
	FUNC11(&sesslock, flags);

	FUNC6(session, ISCSI_KEVENT_CREATE_SESSION);
	FUNC0(session, "Completed session adding\n");
	return 0;

release_host:
	FUNC9(shost);
	return err;
}