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
typedef  int u32 ;
struct nvme_dev {TYPE_1__* pci_dev; TYPE_2__* bar; } ;
struct TYPE_4__ {int /*<<< orphan*/  csts; int /*<<< orphan*/  cc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int HZ ; 
 int NVME_CC_SHN_MASK ; 
 int NVME_CC_SHN_NORMAL ; 
 int NVME_CSTS_SHST_CMPLT ; 
 int NVME_CSTS_SHST_MASK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nvme_dev *dev)
{
	unsigned long timeout;
	u32 cc;

	cc = (FUNC3(&dev->bar->cc) & ~NVME_CC_SHN_MASK) | NVME_CC_SHN_NORMAL;
	FUNC5(cc, &dev->bar->cc);

	timeout = 2 * HZ + jiffies;
	while ((FUNC3(&dev->bar->csts) & NVME_CSTS_SHST_MASK) !=
							NVME_CSTS_SHST_CMPLT) {
		FUNC2(100);
		if (FUNC1(current))
			return -EINTR;
		if (FUNC4(jiffies, timeout)) {
			FUNC0(&dev->pci_dev->dev,
				"Device shutdown incomplete; abort shutdown\n");
			return -ENODEV;
		}
	}

	return 0;
}