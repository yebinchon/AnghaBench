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
typedef  int u8 ;
typedef  int u32 ;
struct pci_device_id {int /*<<< orphan*/  device; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  irq; scalar_t__ mem; int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * dev; struct ieee80211_hw* hw; } ;
typedef  int /*<<< orphan*/  hw_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  SC_OP_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath9k_ops ; 
 int /*<<< orphan*/  ath_isr ; 
 int /*<<< orphan*/  ath_pci_bus_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ath_softc*) ; 
 struct ieee80211_hw* FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int*) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int,int) ; 
 scalar_t__ FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__* FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct ath_softc *sc;
	struct ieee80211_hw *hw;
	u8 csz;
	u32 val;
	int ret = 0;
	char hw_name[64];

	if (FUNC17(pdev))
		return -EIO;

	ret =  FUNC12(pdev, FUNC1(32));
	if (ret) {
		FUNC20("32-bit DMA not available\n");
		return ret;
	}

	ret = FUNC11(pdev, FUNC1(32));
	if (ret) {
		FUNC20("32-bit DMA consistent DMA enable failed\n");
		return ret;
	}

	/*
	 * Cache line size is used to size and align various
	 * structures used to communicate with the hardware.
	 */
	FUNC9(pdev, PCI_CACHE_LINE_SIZE, &csz);
	if (csz == 0) {
		/*
		 * Linux 2.4.18 (at least) writes the cache line size
		 * register as a 16-bit wide register which is wrong.
		 * We must have this setup properly for rx buffer
		 * DMA to work so force a reasonable value here if it
		 * comes up zero.
		 */
		csz = L1_CACHE_BYTES / sizeof(u32);
		FUNC15(pdev, PCI_CACHE_LINE_SIZE, csz);
	}
	/*
	 * The default setting of latency timer yields poor results,
	 * set it to the value used by other systems. It may be worth
	 * tweaking this setting more.
	 */
	FUNC15(pdev, PCI_LATENCY_TIMER, 0xa8);

	FUNC14(pdev);

	/*
	 * Disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state.
	 */
	FUNC10(pdev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC16(pdev, 0x40, val & 0xffff00ff);

	ret = FUNC18(pdev, FUNC0(0), "ath9k");
	if (ret) {
		FUNC5(&pdev->dev, "PCI memory region reserve error\n");
		return -ENODEV;
	}

	hw = FUNC7(sizeof(struct ath_softc), &ath9k_ops);
	if (!hw) {
		FUNC5(&pdev->dev, "No memory for ieee80211_hw\n");
		return -ENOMEM;
	}

	FUNC2(hw, &pdev->dev);
	FUNC13(pdev, hw);

	sc = hw->priv;
	sc->hw = hw;
	sc->dev = &pdev->dev;
	sc->mem = FUNC19(pdev)[0];

	/* Will be cleared in ath9k_start() */
	FUNC22(SC_OP_INVALID, &sc->sc_flags);

	ret = FUNC21(pdev->irq, ath_isr, IRQF_SHARED, "ath9k", sc);
	if (ret) {
		FUNC5(&pdev->dev, "request_irq failed\n");
		goto err_irq;
	}

	sc->irq = pdev->irq;

	ret = FUNC4(id->device, sc, &ath_pci_bus_ops);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to initialize device\n");
		goto err_init;
	}

	FUNC3(sc->sc_ah, hw_name, sizeof(hw_name));
	FUNC23(hw->wiphy, "%s mem=0x%lx, irq=%d\n",
		   hw_name, (unsigned long)sc->mem, pdev->irq);

	return 0;

err_init:
	FUNC6(sc->irq, sc);
err_irq:
	FUNC8(hw);
	return ret;
}