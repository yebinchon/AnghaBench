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
struct amd_iommu {int evt_buf_size; int /*<<< orphan*/  lock; scalar_t__ mmio_base; scalar_t__ evt_buf; } ;

/* Variables and functions */
 int EVENT_ENTRY_SIZE ; 
 scalar_t__ MMIO_EVT_HEAD_OFFSET ; 
 scalar_t__ MMIO_EVT_TAIL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct amd_iommu *iommu)
{
	u32 head, tail;
	unsigned long flags;

	FUNC2(&iommu->lock, flags);

	head = FUNC1(iommu->mmio_base + MMIO_EVT_HEAD_OFFSET);
	tail = FUNC1(iommu->mmio_base + MMIO_EVT_TAIL_OFFSET);

	while (head != tail) {
		FUNC0(iommu, iommu->evt_buf + head);
		head = (head + EVENT_ENTRY_SIZE) % iommu->evt_buf_size;
	}

	FUNC4(head, iommu->mmio_base + MMIO_EVT_HEAD_OFFSET);

	FUNC3(&iommu->lock, flags);
}