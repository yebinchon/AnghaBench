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
typedef  int /*<<< orphan*/  u64 ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct iscsi_conn {struct beiscsi_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct beiscsi_hba {int dummy; } ;
struct beiscsi_endpoint {int /*<<< orphan*/  ep_cid; struct beiscsi_conn* conn; struct beiscsi_hba* phba; } ;
struct beiscsi_conn {struct beiscsi_endpoint* ep; int /*<<< orphan*/  beiscsi_conn_cid; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC0 (struct beiscsi_hba*,struct beiscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct beiscsi_conn*,struct iscsi_conn*,...) ; 
 scalar_t__ FUNC2 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ; 
 struct beiscsi_hba* FUNC3 (struct Scsi_Host*) ; 
 struct iscsi_endpoint* FUNC4 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC5 (struct iscsi_cls_session*) ; 

int FUNC6(struct iscsi_cls_session *cls_session,
		      struct iscsi_cls_conn *cls_conn,
		      u64 transport_fd, int is_leading)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct beiscsi_conn *beiscsi_conn = conn->dd_data;
	struct Scsi_Host *shost = FUNC5(cls_session);
	struct beiscsi_hba *phba = FUNC3(shost);
	struct beiscsi_endpoint *beiscsi_ep;
	struct iscsi_endpoint *ep;

	ep = FUNC4(transport_fd);
	if (!ep)
		return -EINVAL;

	beiscsi_ep = ep->dd_data;

	if (FUNC2(cls_session, cls_conn, is_leading))
		return -EINVAL;

	if (beiscsi_ep->phba != phba) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : beiscsi_ep->hba=%p not equal to phba=%p\n",
			    beiscsi_ep->phba, phba);

		return -EEXIST;
	}

	beiscsi_conn->beiscsi_conn_cid = beiscsi_ep->ep_cid;
	beiscsi_conn->ep = beiscsi_ep;
	beiscsi_ep->conn = beiscsi_conn;

	FUNC1(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : beiscsi_conn=%p conn=%p ep_cid=%d\n",
		    beiscsi_conn, conn, beiscsi_ep->ep_cid);

	return FUNC0(phba, beiscsi_conn, beiscsi_ep->ep_cid);
}