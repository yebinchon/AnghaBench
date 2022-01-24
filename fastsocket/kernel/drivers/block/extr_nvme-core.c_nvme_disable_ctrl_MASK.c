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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nvme_dev {TYPE_1__* bar; } ;
struct TYPE_2__ {int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int NVME_CC_ENABLE ; 
 int FUNC0 (struct nvme_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nvme_dev *dev, u64 cap)
{
	u32 cc = FUNC1(&dev->bar->cc);

	if (cc & NVME_CC_ENABLE)
		FUNC2(cc & ~NVME_CC_ENABLE, &dev->bar->cc);
	return FUNC0(dev, cap, false);
}