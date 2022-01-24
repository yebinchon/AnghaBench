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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {unsigned long ref; void* erp_count; void* fcp_lun; int /*<<< orphan*/  d_id; void* wwpn; void* status; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct zfcp_dbf_rec_record {TYPE_2__ u; int /*<<< orphan*/  id2; int /*<<< orphan*/  id; } ;
struct zfcp_dbf {int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  rec; struct zfcp_dbf_rec_record rec_buf; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_ID_SIZE ; 
 int /*<<< orphan*/  ZFCP_REC_DBF_ID_TARGET ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct zfcp_dbf_rec_record*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_rec_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(char *id2, void *ref, struct zfcp_dbf *dbf,
				atomic_t *status, atomic_t *erp_count, u64 wwpn,
				u32 d_id, u64 fcp_lun)
{
	struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
	unsigned long flags;

	FUNC4(&dbf->rec_lock, flags);
	FUNC3(r, 0, sizeof(*r));
	r->id = ZFCP_REC_DBF_ID_TARGET;
	FUNC2(r->id2, id2, ZFCP_DBF_ID_SIZE);
	r->u.target.ref = (unsigned long)ref;
	r->u.target.status = FUNC0(status);
	r->u.target.wwpn = wwpn;
	r->u.target.d_id = d_id;
	r->u.target.fcp_lun = fcp_lun;
	r->u.target.erp_count = FUNC0(erp_count);
	FUNC1(dbf->rec, 3, r, sizeof(*r));
	FUNC5(&dbf->rec_lock, flags);
}