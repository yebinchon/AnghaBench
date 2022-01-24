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
struct nvme_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  NVME_FEAT_NUM_QUEUES ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct nvme_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct nvme_dev *dev, int count)
{
	int status;
	u32 result;
	u32 q_count = (count - 1) | ((count - 1) << 16);

	status = FUNC1(dev, NVME_FEAT_NUM_QUEUES, q_count, 0,
								&result);
	if (status)
		return status < 0 ? -EIO : -EBUSY;
	return FUNC0(result & 0xffff, result >> 16) + 1;
}