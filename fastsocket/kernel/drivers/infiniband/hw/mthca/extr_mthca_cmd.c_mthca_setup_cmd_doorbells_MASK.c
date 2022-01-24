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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  dbell_map; int /*<<< orphan*/ * dbell_offsets; } ;
struct mthca_dev {TYPE_1__ cmd; int /*<<< orphan*/  pdev; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_CMD_POST_DOORBELLS ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,char*,unsigned long long,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mthca_dev *dev, u64 base)
{
	phys_addr_t addr;
	u16 max_off = 0;
	int i;

	for (i = 0; i < 8; ++i)
		max_off = FUNC1(max_off, dev->cmd.dbell_offsets[i]);

	if ((base & PAGE_MASK) != ((base + max_off) & PAGE_MASK)) {
		FUNC3(dev, "Firmware doorbell region at 0x%016llx, "
			   "length 0x%x crosses a page boundary\n",
			   (unsigned long long) base, max_off);
		return;
	}

	addr = FUNC5(dev->pdev, 2) +
		((FUNC4(dev->pdev, 2) - 1) & base);
	dev->cmd.dbell_map = FUNC0(addr, max_off + sizeof(u32));
	if (!dev->cmd.dbell_map)
		return;

	dev->cmd.flags |= MTHCA_CMD_POST_DOORBELLS;
	FUNC2(dev, "Mapped doorbell page for posting FW commands\n");
}