#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct zfcp_unit {int /*<<< orphan*/  fcp_lun; int /*<<< orphan*/  status; } ;
struct zfcp_port {int /*<<< orphan*/  wwpn; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {unsigned long ref; unsigned long action; int /*<<< orphan*/  fcp_lun; void* us; int /*<<< orphan*/  wwpn; void* ps; void* as; void* need; void* want; } ;
struct TYPE_4__ {TYPE_1__ trigger; } ;
struct zfcp_dbf_rec_record {TYPE_2__ u; int /*<<< orphan*/  id2; int /*<<< orphan*/  id; } ;
struct zfcp_dbf {int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  rec; struct zfcp_dbf_rec_record rec_buf; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_ID_SIZE ; 
 int /*<<< orphan*/  ZFCP_REC_DBF_ID_TRIGGER ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct zfcp_dbf_rec_record*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_rec_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(char *id2, void *ref, u8 want, u8 need, void *action,
			  struct zfcp_adapter *adapter, struct zfcp_port *port,
			  struct zfcp_unit *unit)
{
	struct zfcp_dbf *dbf = adapter->dbf;
	struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
	unsigned long flags;

	FUNC4(&dbf->rec_lock, flags);
	FUNC3(r, 0, sizeof(*r));
	r->id = ZFCP_REC_DBF_ID_TRIGGER;
	FUNC2(r->id2, id2, ZFCP_DBF_ID_SIZE);
	r->u.trigger.ref = (unsigned long)ref;
	r->u.trigger.want = want;
	r->u.trigger.need = need;
	r->u.trigger.action = (unsigned long)action;
	r->u.trigger.as = FUNC0(&adapter->status);
	if (port) {
		r->u.trigger.ps = FUNC0(&port->status);
		r->u.trigger.wwpn = port->wwpn;
	}
	if (unit) {
		r->u.trigger.us = FUNC0(&unit->status);
		r->u.trigger.fcp_lun = unit->fcp_lun;
	}
	FUNC1(dbf->rec, action ? 1 : 4, r, sizeof(*r));
	FUNC5(&dbf->rec_lock, flags);
}