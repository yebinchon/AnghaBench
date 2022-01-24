#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {int /*<<< orphan*/  if_ops; struct wl12xx_platform_data* pdata; } ;
struct wl12xx_platform_data {int platform_quirks; scalar_t__ pwr_in_suspend; } ;
struct wl1271 {scalar_t__ num_tx_desc; int platform_quirks; int irq_wake_enabled; int initialized; int /*<<< orphan*/  nvs_loading_complete; int /*<<< orphan*/ * nvs; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_5__* ops; TYPE_4__* hw; int /*<<< orphan*/  if_ops; scalar_t__ nvs_len; struct platform_device* pdev; } ;
struct TYPE_6__ {struct wlcore_platdev_data* platform_data; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int (* setup ) (struct wl1271*) ;int (* identify_chip ) (struct wl1271*) ;} ;
struct TYPE_9__ {TYPE_3__* wiphy; } ;
struct TYPE_7__ {int pattern_min_len; int /*<<< orphan*/  pattern_max_len; int /*<<< orphan*/  n_patterns; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_2__ wowlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_HIGH ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  WIPHY_WOWLAN_ANY ; 
 int /*<<< orphan*/  WL1271_MAX_RX_FILTERS ; 
 int /*<<< orphan*/  WL1271_RX_FILTER_MAX_PATTERN_SIZE ; 
 int /*<<< orphan*/  WL12XX_NVS_NAME ; 
 int WL12XX_PLATFORM_QUIRK_EDGE_IRQ ; 
 scalar_t__ WLCORE_MAX_TX_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_bt_coex_state ; 
 int /*<<< orphan*/  dev_attr_hw_pg_ver ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct wl1271*) ; 
 int /*<<< orphan*/  fwlog_attr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct wl1271*) ; 
 int FUNC14 (struct wl1271*) ; 
 int FUNC15 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (struct wl1271*) ; 
 int FUNC19 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC20 (struct wl1271*) ; 
 int FUNC21 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC22 (struct wl1271*) ; 
 int /*<<< orphan*/  wlcore_irq ; 

__attribute__((used)) static void FUNC23(const struct firmware *fw, void *context)
{
	struct wl1271 *wl = context;
	struct platform_device *pdev = wl->pdev;
	struct wlcore_platdev_data *pdev_data = pdev->dev.platform_data;
	struct wl12xx_platform_data *pdata = pdev_data->pdata;
	unsigned long irqflags;
	int ret;

	if (fw) {
		wl->nvs = FUNC10(fw->data, fw->size, GFP_KERNEL);
		if (!wl->nvs) {
			FUNC17("Could not allocate nvs data");
			goto out;
		}
		wl->nvs_len = fw->size;
	} else {
		FUNC16(DEBUG_BOOT, "Could not get nvs file %s",
			     WL12XX_NVS_NAME);
		wl->nvs = NULL;
		wl->nvs_len = 0;
	}

	ret = wl->ops->setup(wl);
	if (ret < 0)
		goto out_free_nvs;

	FUNC0(wl->num_tx_desc > WLCORE_MAX_TX_DESCRIPTORS);

	/* adjust some runtime configuration parameters */
	FUNC22(wl);

	wl->irq = FUNC11(pdev, 0);
	wl->platform_quirks = pdata->platform_quirks;
	wl->if_ops = pdev_data->if_ops;

	if (wl->platform_quirks & WL12XX_PLATFORM_QUIRK_EDGE_IRQ)
		irqflags = IRQF_TRIGGER_RISING;
	else
		irqflags = IRQF_TRIGGER_HIGH | IRQF_ONESHOT;

	ret = FUNC13(wl->irq, NULL, wlcore_irq,
				   irqflags, pdev->name, wl);
	if (ret < 0) {
		FUNC17("request_irq() failed: %d", ret);
		goto out_free_nvs;
	}

#ifdef CONFIG_PM
	ret = enable_irq_wake(wl->irq);
	if (!ret) {
		wl->irq_wake_enabled = true;
		device_init_wakeup(wl->dev, 1);
		if (pdata->pwr_in_suspend) {
			wl->hw->wiphy->wowlan.flags = WIPHY_WOWLAN_ANY;
			wl->hw->wiphy->wowlan.n_patterns =
				WL1271_MAX_RX_FILTERS;
			wl->hw->wiphy->wowlan.pattern_min_len = 1;
			wl->hw->wiphy->wowlan.pattern_max_len =
				WL1271_RX_FILTER_MAX_PATTERN_SIZE;
		}
	}
#endif
	FUNC6(wl->irq);

	ret = FUNC21(wl);
	if (ret < 0) {
		FUNC17("couldn't get hw info");
		goto out_irq;
	}

	ret = wl->ops->identify_chip(wl);
	if (ret < 0)
		goto out_irq;

	ret = FUNC18(wl);
	if (ret)
		goto out_irq;

	ret = FUNC19(wl);
	if (ret)
		goto out_irq;

	/* Create sysfs file to control bt coex state */
	ret = FUNC3(wl->dev, &dev_attr_bt_coex_state);
	if (ret < 0) {
		FUNC17("failed to create sysfs file bt_coex_state");
		goto out_unreg;
	}

	/* Create sysfs file to get HW PG version */
	ret = FUNC3(wl->dev, &dev_attr_hw_pg_ver);
	if (ret < 0) {
		FUNC17("failed to create sysfs file hw_pg_ver");
		goto out_bt_coex_state;
	}

	/* Create sysfs file for the FW log */
	ret = FUNC2(wl->dev, &fwlog_attr);
	if (ret < 0) {
		FUNC17("failed to create sysfs file fwlog");
		goto out_hw_pg_ver;
	}

	wl->initialized = true;
	goto out;

out_hw_pg_ver:
	FUNC5(wl->dev, &dev_attr_hw_pg_ver);

out_bt_coex_state:
	FUNC5(wl->dev, &dev_attr_bt_coex_state);

out_unreg:
	FUNC20(wl);

out_irq:
	FUNC8(wl->irq, wl);

out_free_nvs:
	FUNC9(wl->nvs);

out:
	FUNC12(fw);
	FUNC1(&wl->nvs_loading_complete);
}