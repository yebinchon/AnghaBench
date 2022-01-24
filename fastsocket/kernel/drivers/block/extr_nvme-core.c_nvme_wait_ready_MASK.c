#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nvme_dev {TYPE_1__* pci_dev; TYPE_2__* bar; } ;
struct TYPE_4__ {int /*<<< orphan*/  csts; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NVME_CSTS_RDY ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct nvme_dev *dev, u64 cap, bool enabled)
{
	unsigned long timeout;
	u32 bit = enabled ? NVME_CSTS_RDY : 0;

	timeout = ((FUNC0(cap) + 1) * HZ / 2) + jiffies;

	while ((FUNC4(&dev->bar->csts) & NVME_CSTS_RDY) != bit) {
		FUNC3(100);
		if (FUNC2(current))
			return -EINTR;
		if (FUNC5(jiffies, timeout)) {
			FUNC1(&dev->pci_dev->dev,
				"Device not ready; aborting initialisation\n");
			return -ENODEV;
		}
	}

	return 0;
}