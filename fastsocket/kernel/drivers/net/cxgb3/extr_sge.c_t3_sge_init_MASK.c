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
struct sge_params {int dummy; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {int flags; TYPE_1__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CMDQ_CREDIT_TH ; 
 int /*<<< orphan*/  A_SG_CONTROL ; 
 int /*<<< orphan*/  A_SG_DRB_PRI_THRESH ; 
 int /*<<< orphan*/  A_SG_EGR_RCQ_DRB_THRSH ; 
 int /*<<< orphan*/  A_SG_HI_DRB_HI_THRSH ; 
 int /*<<< orphan*/  A_SG_HI_DRB_LO_THRSH ; 
 int /*<<< orphan*/  A_SG_LO_DRB_HI_THRSH ; 
 int /*<<< orphan*/  A_SG_LO_DRB_LO_THRSH ; 
 int /*<<< orphan*/  A_SG_OCO_BASE ; 
 int /*<<< orphan*/  A_SG_TIMER_TICK ; 
 unsigned int F_AVOIDCQOVFL ; 
 unsigned int F_BIGENDIANINGRESS ; 
 unsigned int F_CONGMODE ; 
 unsigned int F_CQCRDTCTRL ; 
 unsigned int F_DROPPKT ; 
 unsigned int F_EGRGENCTRL ; 
 unsigned int F_FATLPERREN ; 
 unsigned int F_FLMODE ; 
 unsigned int F_ISCSICOALESCING ; 
 unsigned int F_ONEINTMULTQ ; 
 unsigned int F_OPTONEINTMULTQ ; 
 unsigned int F_TNLFLMODE ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ T3_REV_C ; 
 int USING_MSI ; 
 int USING_MSIX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 int FUNC8 (struct adapter*) ; 
 unsigned int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct adapter *adap, struct sge_params *p)
{
	unsigned int ctrl, ups = FUNC9(FUNC10(adap->pdev, 2) >> 12);

	ctrl = F_DROPPKT | FUNC4(2) | F_FLMODE | F_AVOIDCQOVFL |
	    F_CQCRDTCTRL | F_CONGMODE | F_TNLFLMODE | F_FATLPERREN |
	    FUNC2(PAGE_SHIFT - 11) | F_BIGENDIANINGRESS |
	    FUNC7(ups ? ups - 1 : 0) | F_ISCSICOALESCING;
#if SGE_NUM_GENBITS == 1
	ctrl |= F_EGRGENCTRL;
#endif
	if (adap->params.rev > 0) {
		if (!(adap->flags & (USING_MSIX | USING_MSI)))
			ctrl |= F_ONEINTMULTQ | F_OPTONEINTMULTQ;
	}
	FUNC11(adap, A_SG_CONTROL, ctrl);
	FUNC11(adap, A_SG_EGR_RCQ_DRB_THRSH, FUNC1(512) |
		     FUNC3(512));
	FUNC11(adap, A_SG_TIMER_TICK, FUNC8(adap) / 10);
	FUNC11(adap, A_SG_CMDQ_CREDIT_TH, FUNC5(32) |
		     FUNC6(200 * FUNC8(adap)));
	FUNC11(adap, A_SG_HI_DRB_HI_THRSH,
		     adap->params.rev < T3_REV_C ? 1000 : 500);
	FUNC11(adap, A_SG_HI_DRB_LO_THRSH, 256);
	FUNC11(adap, A_SG_LO_DRB_HI_THRSH, 1000);
	FUNC11(adap, A_SG_LO_DRB_LO_THRSH, 256);
	FUNC11(adap, A_SG_OCO_BASE, FUNC0(0xfff));
	FUNC11(adap, A_SG_DRB_PRI_THRESH, 63 * 1024);
}