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
typedef  int u32 ;
struct bnx2_napi {scalar_t__ last_status_idx; } ;
struct bnx2 {scalar_t__ idle_chk_status_idx; TYPE_1__* irq_tbl; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_PCICFG_MSI_CONTROL ; 
 int BNX2_PCICFG_MSI_CONTROL_ENABLE ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct bnx2_napi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bnx2_napi*) ; 

__attribute__((used)) static void
FUNC4(struct bnx2 *bp)
{
	struct bnx2_napi *bnapi = &bp->bnx2_napi[0];
	u32 msi_ctrl;

	if (FUNC2(bnapi)) {
		msi_ctrl = FUNC0(bp, BNX2_PCICFG_MSI_CONTROL);
		if (!(msi_ctrl & BNX2_PCICFG_MSI_CONTROL_ENABLE))
			return;

		if (bnapi->last_status_idx == bp->idle_chk_status_idx) {
			FUNC1(bp, BNX2_PCICFG_MSI_CONTROL, msi_ctrl &
				~BNX2_PCICFG_MSI_CONTROL_ENABLE);
			FUNC1(bp, BNX2_PCICFG_MSI_CONTROL, msi_ctrl);
			FUNC3(bp->irq_tbl[0].vector, bnapi);
		}
	}

	bp->idle_chk_status_idx = bnapi->last_status_idx;
}