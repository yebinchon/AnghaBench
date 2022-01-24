#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int addr; int size; TYPE_2__ timer; int /*<<< orphan*/  list; int /*<<< orphan*/ * map; } ;
struct mthca_dev {TYPE_1__ catas_err; int /*<<< orphan*/  pdev; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MTHCA_CATAS_POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,unsigned long long,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poll_catas ; 

void FUNC7(struct mthca_dev *dev)
{
	phys_addr_t addr;

	FUNC2(&dev->catas_err.timer);
	dev->catas_err.map  = NULL;

	addr = FUNC6(dev->pdev, 0) +
		((FUNC5(dev->pdev, 0) - 1) &
		 dev->catas_err.addr);

	dev->catas_err.map = FUNC3(addr, dev->catas_err.size * 4);
	if (!dev->catas_err.map) {
		FUNC4(dev, "couldn't map catastrophic error region "
			   "at 0x%llx/0x%x\n", (unsigned long long) addr,
			   dev->catas_err.size * 4);
		return;
	}

	dev->catas_err.timer.data     = (unsigned long) dev;
	dev->catas_err.timer.function = poll_catas;
	dev->catas_err.timer.expires  = jiffies + MTHCA_CATAS_POLL_INTERVAL;
	FUNC0(&dev->catas_err.list);
	FUNC1(&dev->catas_err.timer);
}