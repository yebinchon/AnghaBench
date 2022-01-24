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
typedef  int u32 ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_MOD ; 
 unsigned long long NSEC_PER_USEC ; 
 int /*<<< orphan*/  OCP_MOD ; 
 int /*<<< orphan*/  OMAP24XX_PM_WKST2 ; 
 int OMAP24XX_USBSTANDBYCTRL ; 
 int /*<<< orphan*/  OMAP2_CONTROL_DEVCONF0 ; 
 int /*<<< orphan*/  OMAP2_PRCM_IRQSTATUS_MPU_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_WKST ; 
 int /*<<< orphan*/  PM_WKST1 ; 
 int /*<<< orphan*/  PWRDM_POWER_RET ; 
 int /*<<< orphan*/  SDRC_DLLA_CTRL ; 
 int /*<<< orphan*/  SDRC_POWER ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  mpu_pwrdm ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ omap2_pm_debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  osc_ck ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC19 (struct timespec,struct timespec) ; 
 unsigned long long FUNC20 (struct timespec*) ; 

__attribute__((used)) static void FUNC21(void)
{
	u32 l;
	struct timespec ts_preidle, ts_postidle, ts_idle;

	/* There is 1 reference hold for all children of the oscillator
	 * clock, the following will remove it. If no one else uses the
	 * oscillator itself it will be disabled if/when we enter retention
	 * mode.
	 */
	FUNC1(osc_ck);

	/* Clear old wake-up events */
	/* REVISIT: These write to reserved bits? */
	FUNC15(0xffffffff, CORE_MOD, PM_WKST1);
	FUNC15(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);
	FUNC15(0xffffffff, WKUP_MOD, PM_WKST);

	/*
	 * Set MPU powerdomain's next power state to RETENTION;
	 * preserve logic state during retention
	 */
	FUNC16(mpu_pwrdm, PWRDM_POWER_RET);
	FUNC17(mpu_pwrdm, PWRDM_POWER_RET);

	/* Workaround to kill USB */
	l = FUNC8(OMAP2_CONTROL_DEVCONF0) | OMAP24XX_USBSTANDBYCTRL;
	FUNC9(l, OMAP2_CONTROL_DEVCONF0);

	FUNC4();

	if (omap2_pm_debug) {
		FUNC6(0, 0, 0);
		FUNC3(&ts_preidle);
	}

	/* One last check for pending IRQs to avoid extra latency due
	 * to sleeping unnecessarily. */
	if (FUNC10())
		goto no_sleep;

	FUNC11(0);
	FUNC11(1);
	FUNC11(2);

	/* Jump to SRAM suspend code */
	FUNC7(FUNC18(SDRC_DLLA_CTRL),
			   FUNC0(SDRC_DLLA_CTRL),
			   FUNC0(SDRC_POWER));

	FUNC12(2);
	FUNC12(1);
	FUNC12(0);

no_sleep:
	if (omap2_pm_debug) {
		unsigned long long tmp;

		FUNC3(&ts_postidle);
		ts_idle = FUNC19(ts_postidle, ts_preidle);
		tmp = FUNC20(&ts_idle) * NSEC_PER_USEC;
		FUNC6(0, 1, tmp);
	}
	FUNC5();

	FUNC2(osc_ck);

	/* clear CORE wake-up events */
	FUNC15(0xffffffff, CORE_MOD, PM_WKST1);
	FUNC15(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);

	/* wakeup domain events - bit 1: GPT1, bit5 GPIO */
	FUNC13(0x4 | 0x1, WKUP_MOD, PM_WKST);

	/* MPU domain wake events */
	l = FUNC14(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
	if (l & 0x01)
		FUNC15(0x01, OCP_MOD,
				  OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
	if (l & 0x20)
		FUNC15(0x20, OCP_MOD,
				  OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);

	/* Mask future PRCM-to-MPU interrupts */
	FUNC15(0x0, OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET);
}