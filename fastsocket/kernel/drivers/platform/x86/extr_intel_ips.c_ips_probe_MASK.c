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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ips_driver {int second_cpu; int mcp_power_limit; int core_power_limit; int poll_turbo_status; int gpu_turbo_enabled; int orig_turbo_limit; int cpu_turbo_enabled; int mcp_temp_limit; int /*<<< orphan*/  regmap; struct pci_dev* dev; int /*<<< orphan*/  adjust; int /*<<< orphan*/  monitor; void* mgta_val; void* pta_val; void* cta_val; int /*<<< orphan*/  turbo_status_lock; int /*<<< orphan*/  limits; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HTS2_PRST_RUNNING ; 
 int HTS2_PRST_SHIFT ; 
 int HTS_NVV ; 
 int HTS_PCPL_SHIFT ; 
 int HTS_PTL_SHIFT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_INFO ; 
 int PLATFORM_TDP ; 
 int PSP_PBRT ; 
 int TEN_UPDATE_EN ; 
 int /*<<< orphan*/  THM_CTA ; 
 int /*<<< orphan*/  THM_HTS ; 
 int /*<<< orphan*/  THM_HTSHI ; 
 int /*<<< orphan*/  THM_MGTA ; 
 int /*<<< orphan*/  THM_PSC ; 
 int /*<<< orphan*/  THM_PTA ; 
 int /*<<< orphan*/  THM_TEN ; 
 int /*<<< orphan*/  THM_TRC ; 
 int /*<<< orphan*/  THM_TSE ; 
 int /*<<< orphan*/  THM_TSPIEN ; 
 int TRC_CORE1_EN ; 
 int TRC_CORE2_EN ; 
 int TRC_CORE_PWR ; 
 int TRC_MCH_EN ; 
 scalar_t__ TSE_EN ; 
 int TSPIEN_AUX2_LOHI ; 
 int TSPIEN_AUX_LOHI ; 
 int TSPIEN_CRIT_LOHI ; 
 int TSPIEN_HOT_LOHI ; 
 int /*<<< orphan*/  TURBO_POWER_CURRENT_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ips_adjust ; 
 int /*<<< orphan*/  FUNC7 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC8 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC9 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct ips_driver*) ; 
 int /*<<< orphan*/  ips_irq_handler ; 
 int /*<<< orphan*/  ips_monitor ; 
 int /*<<< orphan*/  FUNC11 (struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ips_driver*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ips_driver*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct ips_driver* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ips_driver*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (struct ips_driver*) ; 

__attribute__((used)) static int FUNC33(struct pci_dev *dev, const struct pci_device_id *id)
{
	u64 platform_info;
	struct ips_driver *ips;
	u32 hts;
	int ret = 0;
	u16 htshi, trc, trc_required_mask;
	u8 tse;

	ips = FUNC15(sizeof(struct ips_driver), GFP_KERNEL);
	if (!ips)
		return -ENOMEM;

	FUNC22(dev, ips);
	ips->dev = dev;

	ips->limits = FUNC8(ips);
	if (!ips->limits) {
		FUNC3(&dev->dev, "IPS not supported on this CPU\n");
		ret = -ENXIO;
		goto error_free;
	}

	FUNC25(&ips->turbo_status_lock);

	ret = FUNC17(dev);
	if (ret) {
		FUNC2(&dev->dev, "can't enable PCI device, aborting\n");
		goto error_free;
	}

	if (!FUNC21(dev, 0)) {
		FUNC2(&dev->dev, "TBAR not assigned, aborting\n");
		ret = -ENXIO;
		goto error_free;
	}

	ret = FUNC19(dev, "ips thermal sensor");
	if (ret) {
		FUNC2(&dev->dev, "thermal resource busy, aborting\n");
		goto error_free;
	}


	ips->regmap = FUNC5(FUNC21(dev, 0),
			      FUNC20(dev, 0));
	if (!ips->regmap) {
		FUNC2(&dev->dev, "failed to map thermal regs, aborting\n");
		ret = -EBUSY;
		goto error_release;
	}

	tse = FUNC26(THM_TSE);
	if (tse != TSE_EN) {
		FUNC2(&dev->dev, "thermal device not enabled (0x%02x), aborting\n", tse);
		ret = -ENXIO;
		goto error_unmap;
	}

	trc = FUNC28(THM_TRC);
	trc_required_mask = TRC_CORE1_EN | TRC_CORE_PWR | TRC_MCH_EN;
	if ((trc & trc_required_mask) != trc_required_mask) {
		FUNC2(&dev->dev, "thermal reporting for required devices not enabled, aborting\n");
		ret = -ENXIO;
		goto error_unmap;
	}

	if (trc & TRC_CORE2_EN)
		ips->second_cpu = true;

	FUNC32(ips);
	FUNC1(&dev->dev, "max cpu power clamp: %dW\n",
		ips->mcp_power_limit / 10);
	FUNC1(&dev->dev, "max core power clamp: %dW\n",
		ips->core_power_limit / 10);
	/* BIOS may update limits at runtime */
	if (FUNC27(THM_PSC) & PSP_PBRT)
		ips->poll_turbo_status = true;

	if (!FUNC10(ips)) {
		FUNC2(&dev->dev, "failed to get i915 symbols, graphics turbo disabled\n");
		ips->gpu_turbo_enabled = false;
	} else {
		FUNC1(&dev->dev, "graphics turbo enabled\n");
		ips->gpu_turbo_enabled = true;
	}

	/*
	 * Check PLATFORM_INFO MSR to make sure this chip is
	 * turbo capable.
	 */
	FUNC23(PLATFORM_INFO, platform_info);
	if (!(platform_info & PLATFORM_TDP)) {
		FUNC2(&dev->dev, "platform indicates TDP override unavailable, aborting\n");
		ret = -ENODEV;
		goto error_unmap;
	}

	/*
	 * IRQ handler for ME interaction
	 * Note: don't use MSI here as the PCH has bugs.
	 */
	FUNC16(dev);
	ret = FUNC24(dev->irq, ips_irq_handler, IRQF_SHARED, "ips",
			  ips);
	if (ret) {
		FUNC2(&dev->dev, "request irq failed, aborting\n");
		goto error_unmap;
	}

	/* Enable aux, hot & critical interrupts */
	FUNC29(THM_TSPIEN, TSPIEN_AUX2_LOHI | TSPIEN_CRIT_LOHI |
		   TSPIEN_HOT_LOHI | TSPIEN_AUX_LOHI);
	FUNC29(THM_TEN, TEN_UPDATE_EN);

	/* Collect adjustment values */
	ips->cta_val = FUNC28(THM_CTA);
	ips->pta_val = FUNC28(THM_PTA);
	ips->mgta_val = FUNC28(THM_MGTA);

	/* Save turbo limits & ratios */
	FUNC23(TURBO_POWER_CURRENT_LIMIT, ips->orig_turbo_limit);

	FUNC9(ips);
	ips->cpu_turbo_enabled = false;

	/* Create thermal adjust thread */
	ips->adjust = FUNC12(ips_adjust, ips, "ips-adjust");
	if (FUNC0(ips->adjust)) {
		FUNC2(&dev->dev,
			"failed to create thermal adjust thread, aborting\n");
		ret = -ENOMEM;
		goto error_free_irq;

	}

	/*
	 * Set up the work queue and monitor thread. The monitor thread
	 * will wake up ips_adjust thread.
	 */
	ips->monitor = FUNC13(ips_monitor, ips, "ips-monitor");
	if (FUNC0(ips->monitor)) {
		FUNC2(&dev->dev,
			"failed to create thermal monitor thread, aborting\n");
		ret = -ENOMEM;
		goto error_thread_cleanup;
	}

	hts = (ips->core_power_limit << HTS_PCPL_SHIFT) |
		(ips->mcp_temp_limit << HTS_PTL_SHIFT) | HTS_NVV;
	htshi = HTS2_PRST_RUNNING << HTS2_PRST_SHIFT;

	FUNC31(THM_HTSHI, htshi);
	FUNC30(THM_HTS, hts);

	FUNC7(ips);

	FUNC3(&dev->dev, "IPS driver initialized, MCP temp limit %d\n",
		 ips->mcp_temp_limit);
	return ret;

error_thread_cleanup:
	FUNC14(ips->adjust);
error_free_irq:
	FUNC4(ips->dev->irq, ips);
error_unmap:
	FUNC6(ips->regmap);
error_release:
	FUNC18(dev);
error_free:
	FUNC11(ips);
	return ret;
}