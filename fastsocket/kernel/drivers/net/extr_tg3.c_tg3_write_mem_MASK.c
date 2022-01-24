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
typedef  scalar_t__ u32 ;
struct tg3 {int /*<<< orphan*/  indirect_lock; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5906 ; 
 scalar_t__ NIC_SRAM_STATS_BLK ; 
 scalar_t__ NIC_SRAM_TX_BUFFER_DESC ; 
 int /*<<< orphan*/  SRAM_USE_CONFIG ; 
 int /*<<< orphan*/  TG3PCI_MEM_WIN_BASE_ADDR ; 
 int /*<<< orphan*/  TG3PCI_MEM_WIN_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 scalar_t__ FUNC4 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp, u32 off, u32 val)
{
	unsigned long flags;

	if (FUNC3(tp) == ASIC_REV_5906 &&
	    (off >= NIC_SRAM_STATS_BLK) && (off < NIC_SRAM_TX_BUFFER_DESC))
		return;

	FUNC1(&tp->indirect_lock, flags);
	if (FUNC4(tp, SRAM_USE_CONFIG)) {
		FUNC0(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR, off);
		FUNC0(tp->pdev, TG3PCI_MEM_WIN_DATA, val);

		/* Always leave this as zero. */
		FUNC0(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR, 0);
	} else {
		FUNC5(TG3PCI_MEM_WIN_BASE_ADDR, off);
		FUNC5(TG3PCI_MEM_WIN_DATA, val);

		/* Always leave this as zero. */
		FUNC5(TG3PCI_MEM_WIN_BASE_ADDR, 0);
	}
	FUNC2(&tp->indirect_lock, flags);
}