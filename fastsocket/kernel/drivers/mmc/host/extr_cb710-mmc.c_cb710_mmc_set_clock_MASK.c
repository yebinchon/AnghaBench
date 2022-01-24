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
struct pci_dev {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int CB710_MAX_DIVIDER_IDX ; 
 int* cb710_clock_divider_log2 ; 
 struct cb710_slot* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*) ; 
 TYPE_1__* FUNC3 (struct cb710_slot*) ; 
 int* cb710_src_freq_mhz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, int hz)
{
	struct cb710_slot *slot = FUNC0(mmc);
	struct pci_dev *pdev = FUNC3(slot)->pdev;
	u32 src_freq_idx;
	u32 divider_idx;
	int src_hz;

	/* this is magic, unverifiable for me, unless I get
	 * MMC card with cables connected to bus signals */
	FUNC5(pdev, 0x48, &src_freq_idx);
	src_freq_idx = (src_freq_idx >> 16) & 0xF;
	src_hz = cb710_src_freq_mhz[src_freq_idx] * 1000000;

	for (divider_idx = 0; divider_idx < CB710_MAX_DIVIDER_IDX; ++divider_idx) {
		if (hz >= src_hz >> cb710_clock_divider_log2[divider_idx])
			break;
	}

	if (src_freq_idx)
		divider_idx |= 0x8;

	FUNC1(pdev, 0x40, ~0xF0000000, divider_idx << 28);

	FUNC4(FUNC2(slot),
		"clock set to %d Hz, wanted %d Hz; flag = %d\n",
		src_hz >> cb710_clock_divider_log2[divider_idx & 7],
		hz, (divider_idx & 8) != 0);
}