#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_8__ {scalar_t__ bd; } ;
struct TYPE_5__ {int /*<<< orphan*/  firmware_loading_complete; } ;
struct il_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  beacon_skb; int /*<<< orphan*/  hw_base; TYPE_3__* pci_dev; int /*<<< orphan*/ * workqueue; TYPE_4__ rxq; int /*<<< orphan*/  lock; scalar_t__ mac80211_registered; int /*<<< orphan*/  status; TYPE_1__ _4965; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*) ; 
 int /*<<< orphan*/  il_attribute_group ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 struct il_priv* FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC29(struct pci_dev *pdev)
{
	struct il_priv *il = FUNC21(pdev);
	unsigned long flags;

	if (!il)
		return;

	FUNC28(&il->_4965.firmware_loading_complete);

	FUNC0("*** UNLOAD DRIVER ***\n");

	FUNC14(il);
	FUNC27(&pdev->dev.kobj, &il_attribute_group);

	/* ieee80211_unregister_hw call wil cause il_mac_stop to
	 * to be called and il4965_down since we are removing the device
	 * we need to set S_EXIT_PENDING bit.
	 */
	FUNC24(S_EXIT_PENDING, &il->status);

	FUNC17(il);

	if (il->mac80211_registered) {
		FUNC6(il->hw);
		il->mac80211_registered = 0;
	} else {
		FUNC8(il);
	}

	/*
	 * Make sure device is reset to low power before unloading driver.
	 * This may be redundant with il4965_down(), but there are paths to
	 * run il4965_down() without calling apm_ops.stop(), and there are
	 * paths to avoid running il4965_down() at all before leaving driver.
	 * This (inexpensive) call *makes sure* device is reset.
	 */
	FUNC13(il);

	/* make sure we flush any pending irq or
	 * tasklet for the driver
	 */
	FUNC25(&il->lock, flags);
	FUNC15(il);
	FUNC26(&il->lock, flags);

	FUNC11(il);

	FUNC7(il);

	if (il->rxq.bd)
		FUNC10(il, &il->rxq);
	FUNC9(il);

	FUNC16(il);

	/*netif_stop_queue(dev); */
	FUNC3(il->workqueue);

	/* ieee80211_unregister_hw calls il_mac_stop, which flushes
	 * il->workqueue... so we can't take down the workqueue
	 * until now... */
	FUNC1(il->workqueue);
	il->workqueue = NULL;

	FUNC4(il->pci_dev->irq, il);
	FUNC20(il->pci_dev);
	FUNC18(il->hw_base);
	FUNC22(pdev);
	FUNC19(pdev);
	FUNC23(pdev, NULL);

	FUNC12(il);

	FUNC2(il->beacon_skb);

	FUNC5(il->hw);
}