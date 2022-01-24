#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  step; int /*<<< orphan*/  status; int /*<<< orphan*/  fsf_req; int /*<<< orphan*/  action; } ;
struct TYPE_8__ {int /*<<< orphan*/  us; int /*<<< orphan*/  ps; int /*<<< orphan*/  as; int /*<<< orphan*/  fcp_lun; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  need; int /*<<< orphan*/  want; int /*<<< orphan*/  action; int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {int /*<<< orphan*/  fcp_lun; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  d_id; int /*<<< orphan*/  erp_count; int /*<<< orphan*/  status; int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  running; int /*<<< orphan*/  ready; int /*<<< orphan*/  total; } ;
struct TYPE_10__ {TYPE_4__ action; TYPE_3__ trigger; TYPE_2__ target; TYPE_1__ thread; } ;
struct zfcp_dbf_rec_record {size_t id; TYPE_5__ u; int /*<<< orphan*/  id2; } ;
struct debug_view {int dummy; } ;
typedef  int /*<<< orphan*/  debug_info_t ;

/* Variables and functions */
 int ZFCP_DBF_ID_SIZE ; 
#define  ZFCP_REC_DBF_ID_ACTION 131 
#define  ZFCP_REC_DBF_ID_TARGET 130 
#define  ZFCP_REC_DBF_ID_THREAD 129 
#define  ZFCP_REC_DBF_ID_TRIGGER 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char*) ; 
 char** zfcp_dbf_rec_tags ; 

__attribute__((used)) static int FUNC4(debug_info_t *id, struct debug_view *view,
				    char *buf, const char *_rec)
{
	struct zfcp_dbf_rec_record *r = (struct zfcp_dbf_rec_record *)_rec;
	char *p = buf;
	char hint[ZFCP_DBF_ID_SIZE + 1];

	FUNC0(hint, r->id2, ZFCP_DBF_ID_SIZE);
	hint[ZFCP_DBF_ID_SIZE] = 0;
	FUNC3(&p, "tag", zfcp_dbf_rec_tags[r->id]);
	FUNC3(&p, "hint", hint);
	switch (r->id) {
	case ZFCP_REC_DBF_ID_THREAD:
		FUNC2(&p, "total", "%d", r->u.thread.total);
		FUNC2(&p, "ready", "%d", r->u.thread.ready);
		FUNC2(&p, "running", "%d", r->u.thread.running);
		break;
	case ZFCP_REC_DBF_ID_TARGET:
		FUNC2(&p, "reference", "0x%016Lx", r->u.target.ref);
		FUNC2(&p, "status", "0x%08x", r->u.target.status);
		FUNC2(&p, "erp_count", "%d", r->u.target.erp_count);
		FUNC2(&p, "d_id", "0x%06x", r->u.target.d_id);
		FUNC2(&p, "wwpn", "0x%016Lx", r->u.target.wwpn);
		FUNC2(&p, "fcp_lun", "0x%016Lx", r->u.target.fcp_lun);
		break;
	case ZFCP_REC_DBF_ID_TRIGGER:
		FUNC2(&p, "reference", "0x%016Lx", r->u.trigger.ref);
		FUNC2(&p, "erp_action", "0x%016Lx", r->u.trigger.action);
		FUNC2(&p, "requested", "%d", r->u.trigger.want);
		FUNC2(&p, "executed", "%d", r->u.trigger.need);
		FUNC2(&p, "wwpn", "0x%016Lx", r->u.trigger.wwpn);
		FUNC2(&p, "fcp_lun", "0x%016Lx", r->u.trigger.fcp_lun);
		FUNC2(&p, "adapter_status", "0x%08x", r->u.trigger.as);
		FUNC2(&p, "port_status", "0x%08x", r->u.trigger.ps);
		FUNC2(&p, "unit_status", "0x%08x", r->u.trigger.us);
		break;
	case ZFCP_REC_DBF_ID_ACTION:
		FUNC2(&p, "erp_action", "0x%016Lx", r->u.action.action);
		FUNC2(&p, "fsf_req", "0x%016Lx", r->u.action.fsf_req);
		FUNC2(&p, "status", "0x%08Lx", r->u.action.status);
		FUNC2(&p, "step", "0x%08Lx", r->u.action.step);
		break;
	}
	p += FUNC1(p, "\n");
	return p - buf;
}