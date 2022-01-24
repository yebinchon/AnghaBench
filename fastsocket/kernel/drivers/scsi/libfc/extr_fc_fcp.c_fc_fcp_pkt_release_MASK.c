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
struct fc_fcp_pkt {int /*<<< orphan*/  lp; int /*<<< orphan*/  ref_cnt; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_pkt_pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct fc_fcp_internal* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fc_fcp_pkt *fsp)
{
	if (FUNC0(&fsp->ref_cnt)) {
		struct fc_fcp_internal *si = FUNC1(fsp->lp);

		FUNC2(fsp, si->scsi_pkt_pool);
	}
}