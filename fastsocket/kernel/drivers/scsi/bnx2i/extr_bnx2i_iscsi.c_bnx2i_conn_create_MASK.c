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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct bnx2i_conn {int /*<<< orphan*/  cmd_cleanup_cmpl; int /*<<< orphan*/ * ep; int /*<<< orphan*/  work_cnt; struct bnx2i_hba* hba; struct iscsi_cls_conn* cls_conn; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bnx2i_hba*,struct bnx2i_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC4 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cls_conn*) ; 
 struct bnx2i_hba* FUNC6 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC7 (struct iscsi_cls_session*) ; 

__attribute__((used)) static struct iscsi_cls_conn *
FUNC8(struct iscsi_cls_session *cls_session, uint32_t cid)
{
	struct Scsi_Host *shost = FUNC7(cls_session);
	struct bnx2i_hba *hba = FUNC6(shost);
	struct bnx2i_conn *bnx2i_conn;
	struct iscsi_cls_conn *cls_conn;
	struct iscsi_conn *conn;

	cls_conn = FUNC4(cls_session, sizeof(*bnx2i_conn),
				    cid);
	if (!cls_conn)
		return NULL;
	conn = cls_conn->dd_data;

	bnx2i_conn = conn->dd_data;
	bnx2i_conn->cls_conn = cls_conn;
	bnx2i_conn->hba = hba;

	FUNC0(&bnx2i_conn->work_cnt, 0);

	/* 'ep' ptr will be assigned in bind() call */
	bnx2i_conn->ep = NULL;
	FUNC2(&bnx2i_conn->cmd_cleanup_cmpl);

	if (FUNC1(hba, bnx2i_conn)) {
		FUNC3(KERN_ALERT, conn,
				  "conn_new: login resc alloc failed!!\n");
		goto free_conn;
	}

	return cls_conn;

free_conn:
	FUNC5(cls_conn);
	return NULL;
}