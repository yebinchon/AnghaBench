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
typedef  int u8 ;
typedef  int u32 ;
struct ips_driver {int core_power_limit; int mch_power_limit; int cpu_turbo_enabled; int gpu_turbo_enabled; int mcp_temp_limit; int mcp_power_limit; TYPE_1__* dev; int /*<<< orphan*/  turbo_status_lock; scalar_t__ gpu_busy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SEC_ACK ; 
 int STS_GPL_MASK ; 
 int STS_GPL_SHIFT ; 
 int STS_GTD_DIS ; 
 int STS_NVV ; 
 int STS_PCPL_MASK ; 
 int STS_PCPL_SHIFT ; 
 int STS_PCTD_DIS ; 
 int STS_PPL_MASK ; 
 int STS_PPL_SHIFT ; 
 int STS_PTL_MASK ; 
 int STS_PTL_SHIFT ; 
 int /*<<< orphan*/  THM_SEC ; 
 int /*<<< orphan*/  THM_STS ; 
 int /*<<< orphan*/  THM_TC1 ; 
 int /*<<< orphan*/  THM_TES ; 
 int /*<<< orphan*/  THM_TSES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ips_driver*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *arg)
{
	struct ips_driver *ips = arg;
	u8 tses = FUNC4(THM_TSES);
	u8 tes = FUNC4(THM_TES);

	if (!tses && !tes)
		return IRQ_NONE;

	FUNC0(&ips->dev->dev, "TSES: 0x%02x\n", tses);
	FUNC0(&ips->dev->dev, "TES: 0x%02x\n", tes);

	/* STS update from EC? */
	if (tes & 1) {
		u32 sts, tc1;

		sts = FUNC5(THM_STS);
		tc1 = FUNC5(THM_TC1);

		if (sts & STS_NVV) {
			FUNC2(&ips->turbo_status_lock);
			ips->core_power_limit = (sts & STS_PCPL_MASK) >>
				STS_PCPL_SHIFT;
			ips->mch_power_limit = (sts & STS_GPL_MASK) >>
				STS_GPL_SHIFT;
			/* ignore EC CPU vs GPU pref */
			ips->cpu_turbo_enabled = !(sts & STS_PCTD_DIS);
			/* 
			 * Disable turbo for now, until we can figure
			 * out why the power figures are wrong
			 */
			ips->cpu_turbo_enabled = false;
			if (ips->gpu_busy)
				ips->gpu_turbo_enabled = !(sts & STS_GTD_DIS);
			ips->mcp_temp_limit = (sts & STS_PTL_MASK) >>
				STS_PTL_SHIFT;
			ips->mcp_power_limit = (tc1 & STS_PPL_MASK) >>
				STS_PPL_SHIFT;
			FUNC7(ips);
			FUNC3(&ips->turbo_status_lock);

			FUNC6(THM_SEC, SEC_ACK);
		}
		FUNC6(THM_TES, tes);
	}

	/* Thermal trip */
	if (tses) {
		FUNC1(&ips->dev->dev,
			 "thermal trip occurred, tses: 0x%04x\n", tses);
		FUNC6(THM_TSES, tses);
	}

	return IRQ_HANDLED;
}