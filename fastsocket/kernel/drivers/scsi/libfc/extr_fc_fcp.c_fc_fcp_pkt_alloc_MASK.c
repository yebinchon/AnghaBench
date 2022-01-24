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
struct fc_lport {int dummy; } ;
struct TYPE_2__ {unsigned long data; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  scsi_pkt_lock; int /*<<< orphan*/  list; TYPE_1__ timer; int /*<<< orphan*/  ref_cnt; int /*<<< orphan*/  xfer_ddp; struct fc_lport* lp; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_pkt_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct fc_fcp_internal* FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct fc_fcp_pkt* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_fcp_pkt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fc_fcp_pkt *FUNC7(struct fc_lport *lport, gfp_t gfp)
{
	struct fc_fcp_internal *si = FUNC2(lport);
	struct fc_fcp_pkt *fsp;

	fsp = FUNC4(si->scsi_pkt_pool, gfp);
	if (fsp) {
		FUNC5(fsp, 0, sizeof(*fsp));
		fsp->lp = lport;
		fsp->xfer_ddp = FC_XID_UNKNOWN;
		FUNC1(&fsp->ref_cnt, 1);
		FUNC3(&fsp->timer);
		fsp->timer.data = (unsigned long)fsp;
		FUNC0(&fsp->list);
		FUNC6(&fsp->scsi_pkt_lock);
	}
	return fsp;
}