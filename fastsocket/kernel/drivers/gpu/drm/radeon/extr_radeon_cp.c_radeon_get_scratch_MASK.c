#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int flags; scalar_t__ writeback_works; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ R600_SCRATCH_REG0 ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ RADEON_SCRATCH_REG0 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

u32 FUNC4(drm_radeon_private_t *dev_priv, int index)
{
	if (dev_priv->writeback_works) {
		if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
			return FUNC3(dev_priv,
						     FUNC0(index));
		else
			return FUNC3(dev_priv,
						     FUNC2(index));
	} else {
		if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
			return FUNC1(R600_SCRATCH_REG0 + 4*index);
		else
			return FUNC1(RADEON_SCRATCH_REG0 + 4*index);
	}
}