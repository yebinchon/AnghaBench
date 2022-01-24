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
struct iommu {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; scalar_t__ iopgd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMU_CNTL ; 
 int MMU_CNTL_MASK ; 
 int MMU_CNTL_MMU_EN ; 
 int MMU_CNTL_TWL_EN ; 
 int /*<<< orphan*/  MMU_IRQENABLE ; 
 int MMU_IRQ_MASK ; 
 int /*<<< orphan*/  MMU_REVISION ; 
 int /*<<< orphan*/  MMU_SYSCONFIG ; 
 int /*<<< orphan*/  MMU_SYSSTATUS ; 
 int MMU_SYS_AUTOIDLE ; 
 int MMU_SYS_IDLE_MASK ; 
 int MMU_SYS_IDLE_SMART ; 
 int MMU_SYS_RESETDONE ; 
 int MMU_SYS_SOFTRESET ; 
 int /*<<< orphan*/  MMU_TTB ; 
 int /*<<< orphan*/  SZ_16K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu*,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct iommu *obj)
{
	u32 l, pa;
	unsigned long timeout;

	if (!obj->iopgd || !FUNC0((u32)obj->iopgd,  SZ_16K))
		return -EINVAL;

	pa = FUNC7(obj->iopgd);
	if (!FUNC0(pa, SZ_16K))
		return -EINVAL;

	FUNC4(obj, MMU_SYS_SOFTRESET, MMU_SYSCONFIG);

	timeout = jiffies + FUNC5(20);
	do {
		l = FUNC3(obj, MMU_SYSSTATUS);
		if (l & MMU_SYS_RESETDONE)
			break;
	} while (!FUNC6(jiffies, timeout));

	if (!(l & MMU_SYS_RESETDONE)) {
		FUNC1(obj->dev, "can't take mmu out of reset\n");
		return -ENODEV;
	}

	l = FUNC3(obj, MMU_REVISION);
	FUNC2(obj->dev, "%s: version %d.%d\n", obj->name,
		 (l >> 4) & 0xf, l & 0xf);

	l = FUNC3(obj, MMU_SYSCONFIG);
	l &= ~MMU_SYS_IDLE_MASK;
	l |= (MMU_SYS_IDLE_SMART | MMU_SYS_AUTOIDLE);
	FUNC4(obj, l, MMU_SYSCONFIG);

	FUNC4(obj, MMU_IRQ_MASK, MMU_IRQENABLE);
	FUNC4(obj, pa, MMU_TTB);

	l = FUNC3(obj, MMU_CNTL);
	l &= ~MMU_CNTL_MASK;
	l |= (MMU_CNTL_MMU_EN | MMU_CNTL_TWL_EN);
	FUNC4(obj, l, MMU_CNTL);

	return 0;
}