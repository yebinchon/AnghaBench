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
struct TYPE_2__ {int fmax; int fstart; int max_delay; int min_delay; int cur_delay; int last_count1; int last_count2; int /*<<< orphan*/  last_time2; int /*<<< orphan*/  last_time1; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int MCPPCE_EN ; 
 int MEMCTL_CMD_STS ; 
 int MEMIHYST ; 
 int MEMINTREN ; 
 int MEMINT_CX_SUPR_EN ; 
 int MEMINT_EVAL_CHG_EN ; 
 int MEMMODECTL ; 
 int MEMMODE_FMAX_MASK ; 
 int MEMMODE_FMAX_SHIFT ; 
 int MEMMODE_FMIN_MASK ; 
 int MEMMODE_FSTART_MASK ; 
 int MEMMODE_FSTART_SHIFT ; 
 int MEMMODE_SWMODE_EN ; 
 int MEMSWCTL ; 
 int PMMISC ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PXVFREQ_BASE ; 
 int PXVFREQ_PX_MASK ; 
 int PXVFREQ_PX_SHIFT ; 
 int RCBMAXAVG ; 
 int RCBMINAVG ; 
 int RCDNEI ; 
 int RCUPEI ; 
 int TSC1 ; 
 int TSE ; 
 int VIDSTART ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int,int) ; 

__attribute__((used)) static void FUNC13(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 rgvmodectl = FUNC2(MEMMODECTL);
	u8 fmax, fmin, fstart, vstart;

	FUNC10(&mchdev_lock);

	/* Enable temp reporting */
	FUNC4(PMMISC, FUNC2(PMMISC) | MCPPCE_EN);
	FUNC4(TSC1, FUNC2(TSC1) | TSE);

	/* 100ms RC evaluation intervals */
	FUNC3(RCUPEI, 100000);
	FUNC3(RCDNEI, 100000);

	/* Set max/min thresholds to 90ms and 80ms respectively */
	FUNC3(RCBMAXAVG, 90000);
	FUNC3(RCBMINAVG, 80000);

	FUNC3(MEMIHYST, 1);

	/* Set up min, max, and cur for interrupt handling */
	fmax = (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT;
	fmin = (rgvmodectl & MEMMODE_FMIN_MASK);
	fstart = (rgvmodectl & MEMMODE_FSTART_MASK) >>
		MEMMODE_FSTART_SHIFT;

	vstart = (FUNC2(PXVFREQ_BASE + (fstart * 4)) & PXVFREQ_PX_MASK) >>
		PXVFREQ_PX_SHIFT;

	dev_priv->ips.fmax = fmax; /* IPS callback will increase this */
	dev_priv->ips.fstart = fstart;

	dev_priv->ips.max_delay = fstart;
	dev_priv->ips.min_delay = fmin;
	dev_priv->ips.cur_delay = fstart;

	FUNC0("fmax: %d, fmin: %d, fstart: %d\n",
			 fmax, fmin, fstart);

	FUNC3(MEMINTREN, MEMINT_CX_SUPR_EN | MEMINT_EVAL_CHG_EN);

	/*
	 * Interrupts will be enabled in ironlake_irq_postinstall
	 */

	FUNC3(VIDSTART, vstart);
	FUNC5(VIDSTART);

	rgvmodectl |= MEMMODE_SWMODE_EN;
	FUNC3(MEMMODECTL, rgvmodectl);

	if (FUNC12((FUNC2(MEMSWCTL) & MEMCTL_CMD_STS) == 0, 10))
		FUNC1("stuck trying to change perf mode\n");
	FUNC9(1);

	FUNC7(dev, fstart);

	dev_priv->ips.last_count1 = FUNC2(0x112e4) + FUNC2(0x112e8) +
		FUNC2(0x112e0);
	dev_priv->ips.last_time1 = FUNC8(jiffies);
	dev_priv->ips.last_count2 = FUNC2(0x112f4);
	FUNC6(&dev_priv->ips.last_time2);

	FUNC11(&mchdev_lock);
}