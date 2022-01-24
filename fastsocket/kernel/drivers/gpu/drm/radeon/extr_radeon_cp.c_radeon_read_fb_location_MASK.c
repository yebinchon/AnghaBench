#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int CHIP_RS600 ; 
 int CHIP_RS690 ; 
 int CHIP_RS740 ; 
 int CHIP_RV515 ; 
 int CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R520_MC_FB_LOCATION ; 
 int /*<<< orphan*/  R600_MC_VM_FB_LOCATION ; 
 int /*<<< orphan*/  R700_MC_VM_FB_LOCATION ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RADEON_MC_FB_LOCATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS600_MC_FB_LOCATION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS690_MC_FB_LOCATION ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RV515_MC_FB_LOCATION ; 

u32 FUNC4(drm_radeon_private_t *dev_priv)
{

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
		return FUNC1(R700_MC_VM_FB_LOCATION);
	else if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
		return FUNC1(R600_MC_VM_FB_LOCATION);
	else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV515)
		return FUNC0(dev_priv, RV515_MC_FB_LOCATION);
	else if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
		 ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740))
		return FUNC3(dev_priv, RS690_MC_FB_LOCATION);
	else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS600)
		return FUNC2(dev_priv, RS600_MC_FB_LOCATION);
	else if ((dev_priv->flags & RADEON_FAMILY_MASK) > CHIP_RV515)
		return FUNC0(dev_priv, R520_MC_FB_LOCATION);
	else
		return FUNC1(RADEON_MC_FB_LOCATION);
}