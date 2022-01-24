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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int /*<<< orphan*/  pcie_reg_mask; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_PCIE_DATA ; 
 int /*<<< orphan*/  RADEON_PCIE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t FUNC2(struct radeon_device *rdev, uint32_t reg)
{
	uint32_t r;

	FUNC1(RADEON_PCIE_INDEX, ((reg) & rdev->pcie_reg_mask));
	r = FUNC0(RADEON_PCIE_DATA);
	return r;
}