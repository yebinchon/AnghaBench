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
struct amd_iommu {int /*<<< orphan*/  lock; scalar_t__ mmio_base; } ;

/* Variables and functions */
 unsigned long EXIT_LOOP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MMIO_STATUS_COM_WAIT_INT_MASK ; 
 scalar_t__ MMIO_STATUS_OFFSET ; 
 int /*<<< orphan*/  compl_wait ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct amd_iommu *iommu)
{
	int ready = 0;
	unsigned status = 0;
	unsigned long i = 0;

	FUNC0(compl_wait);

	while (!ready && (i < EXIT_LOOP_COUNT)) {
		++i;
		/* wait for the bit to become one */
		status = FUNC1(iommu->mmio_base + MMIO_STATUS_OFFSET);
		ready = status & MMIO_STATUS_COM_WAIT_INT_MASK;
	}

	/* set bit back to zero */
	status &= ~MMIO_STATUS_COM_WAIT_INT_MASK;
	FUNC6(status, iommu->mmio_base + MMIO_STATUS_OFFSET);

	if (FUNC5(i == EXIT_LOOP_COUNT)) {
		FUNC4(&iommu->lock);
		FUNC2(iommu);
		FUNC3(&iommu->lock);
	}
}