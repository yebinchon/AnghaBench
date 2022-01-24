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
struct zfcp_erp_action {scalar_t__ fsf_req; int /*<<< orphan*/  step; int /*<<< orphan*/  status; TYPE_1__* adapter; } ;
struct TYPE_5__ {unsigned long action; unsigned long fsf_req; int /*<<< orphan*/  step; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__ action; } ;
struct zfcp_dbf_rec_record {TYPE_3__ u; int /*<<< orphan*/  id2; int /*<<< orphan*/  id; } ;
struct zfcp_dbf {int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  rec; struct zfcp_dbf_rec_record rec_buf; } ;
struct TYPE_4__ {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_ID_SIZE ; 
 int /*<<< orphan*/  ZFCP_REC_DBF_ID_ACTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct zfcp_dbf_rec_record*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_dbf_rec_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(char *id2, struct zfcp_erp_action *erp_action)
{
	struct zfcp_dbf *dbf = erp_action->adapter->dbf;
	struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
	unsigned long flags;

	FUNC3(&dbf->rec_lock, flags);
	FUNC2(r, 0, sizeof(*r));
	r->id = ZFCP_REC_DBF_ID_ACTION;
	FUNC1(r->id2, id2, ZFCP_DBF_ID_SIZE);
	r->u.action.action = (unsigned long)erp_action;
	r->u.action.status = erp_action->status;
	r->u.action.step = erp_action->step;
	r->u.action.fsf_req = (unsigned long)erp_action->fsf_req;
	FUNC0(dbf->rec, 5, r, sizeof(*r));
	FUNC4(&dbf->rec_lock, flags);
}