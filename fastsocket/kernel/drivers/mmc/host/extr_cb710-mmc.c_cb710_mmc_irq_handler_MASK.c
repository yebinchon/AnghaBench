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
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_CONFIGB_PORT ; 
 int /*<<< orphan*/  CB710_MMC_CONFIG_PORT ; 
 int CB710_MMC_IE_CISTATUS_MASK ; 
 int /*<<< orphan*/  CB710_MMC_IE_TEST_MASK ; 
 int /*<<< orphan*/  CB710_MMC_IRQ_ENABLE_PORT ; 
 int CB710_MMC_S1_CARD_CHANGED ; 
 int /*<<< orphan*/  CB710_MMC_STATUS1_PORT ; 
 int /*<<< orphan*/  CB710_MMC_STATUS_PORT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*) ; 
 struct mmc_host* FUNC3 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct cb710_slot*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,int) ; 
 struct cb710_mmc_reader* FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct cb710_slot *slot)
{
	struct mmc_host *mmc = FUNC3(slot);
	struct cb710_mmc_reader *reader = FUNC7(mmc);
	u32 status, config1, config2, irqen;

	status = FUNC1(slot, CB710_MMC_STATUS_PORT);
	irqen = FUNC1(slot, CB710_MMC_IRQ_ENABLE_PORT);
	config2 = FUNC1(slot, CB710_MMC_CONFIGB_PORT);
	config1 = FUNC1(slot, CB710_MMC_CONFIG_PORT);

	FUNC5(FUNC2(slot), "interrupt; status: %08X, "
		"ie: %08X, c2: %08X, c1: %08X\n",
		status, irqen, config2, config1);

	if (status & (CB710_MMC_S1_CARD_CHANGED << 8)) {
		/* ack the event */
		FUNC4(slot, CB710_MMC_STATUS1_PORT,
			CB710_MMC_S1_CARD_CHANGED);
		if ((irqen & CB710_MMC_IE_CISTATUS_MASK)
		    == CB710_MMC_IE_CISTATUS_MASK)
			FUNC6(mmc, HZ/5);
	} else {
		FUNC5(FUNC2(slot), "unknown interrupt (test)\n");
		FUNC8(&reader->irq_lock);
		FUNC0(slot, 0, CB710_MMC_IE_TEST_MASK);
		FUNC9(&reader->irq_lock);
	}

	return 1;
}