#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct list_head {int dummy; } ;
struct io_bdt {struct bnx2fc_cmd* io_req; } ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct TYPE_6__ {scalar_t__ counter; } ;
struct bnx2fc_rport {int /*<<< orphan*/  free_sqes; TYPE_3__ num_active_ios; struct fcoe_port* port; } ;
struct bnx2fc_interface {TYPE_1__* hba; } ;
struct bnx2fc_cmd_mgr {struct io_bdt** io_bdt_pool; int /*<<< orphan*/ * free_list_lock; struct bnx2fc_cmd** cmds; TYPE_2__* free_list; } ;
struct bnx2fc_cmd {size_t xid; int /*<<< orphan*/  refcount; struct io_bdt* bd_tbl; scalar_t__ req_flags; struct bnx2fc_cmd_mgr* cmd_mgr; struct fcoe_port* port; int /*<<< orphan*/  link; } ;
struct TYPE_5__ {scalar_t__ next; } ;
struct TYPE_4__ {struct bnx2fc_cmd_mgr* cmd_mgr; } ;

/* Variables and functions */
 scalar_t__ BNX2FC_SCSI_MAX_SQES ; 
 scalar_t__ BNX2FC_SQ_WQES_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct bnx2fc_cmd *FUNC11(struct bnx2fc_rport *tgt)
{
	struct fcoe_port *port = tgt->port;
	struct bnx2fc_interface *interface = port->priv;
	struct bnx2fc_cmd_mgr *cmd_mgr = interface->hba->cmd_mgr;
	struct bnx2fc_cmd *io_req;
	struct list_head *listp;
	struct io_bdt *bd_tbl;
	u32 free_sqes;
	u32 max_sqes;
	u16 xid;
	int index = FUNC4();

	max_sqes = BNX2FC_SCSI_MAX_SQES;
	/*
	 * NOTE: Free list insertions and deletions are protected with
	 * cmgr lock
	 */
	FUNC9(&cmd_mgr->free_list_lock[index]);
	free_sqes = FUNC3(&tgt->free_sqes);
	if ((FUNC7(&cmd_mgr->free_list[index])) ||
	    (tgt->num_active_ios.counter  >= max_sqes) ||
	    (free_sqes + max_sqes <= BNX2FC_SQ_WQES_MAX)) {
		FUNC10(&cmd_mgr->free_list_lock[index]);
		FUNC8();
		return NULL;
	}

	listp = (struct list_head *)
		cmd_mgr->free_list[index].next;
	FUNC6(listp);
	io_req = (struct bnx2fc_cmd *) listp;
	xid = io_req->xid;
	cmd_mgr->cmds[xid] = io_req;
	FUNC2(&tgt->num_active_ios);
	FUNC1(&tgt->free_sqes);
	FUNC10(&cmd_mgr->free_list_lock[index]);
	FUNC8();

	FUNC0(&io_req->link);

	io_req->port = port;
	io_req->cmd_mgr = cmd_mgr;
	io_req->req_flags = 0;

	/* Bind io_bdt for this io_req */
	/* Have a static link between io_req and io_bdt_pool */
	bd_tbl = io_req->bd_tbl = cmd_mgr->io_bdt_pool[xid];
	bd_tbl->io_req = io_req;

	/* Hold the io_req  against deletion */
	FUNC5(&io_req->refcount);
	return io_req;
}