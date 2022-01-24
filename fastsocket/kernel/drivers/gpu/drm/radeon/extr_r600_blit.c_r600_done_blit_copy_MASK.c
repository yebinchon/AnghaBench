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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int R600_CACHE_FLUSH_AND_INV_EVENT ; 
 int /*<<< orphan*/  R600_IT_EVENT_WRITE ; 
 int /*<<< orphan*/  R600_IT_SET_CONFIG_REG ; 
 int R600_SET_CONFIG_REG_OFFSET ; 
 int R600_WAIT_UNTIL ; 
 int RADEON_WAIT_3D_IDLE ; 
 int RADEON_WAIT_3D_IDLECLEAN ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

void
FUNC7(struct drm_device *dev)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	RING_LOCALS;
	FUNC4("\n");

	FUNC1(5);
	FUNC5(FUNC3(R600_IT_EVENT_WRITE, 0));
	FUNC5(R600_CACHE_FLUSH_AND_INV_EVENT);
	/* wait for 3D idle clean */
	FUNC5(FUNC3(R600_IT_SET_CONFIG_REG, 1));
	FUNC5((R600_WAIT_UNTIL - R600_SET_CONFIG_REG_OFFSET) >> 2);
	FUNC5(RADEON_WAIT_3D_IDLE | RADEON_WAIT_3D_IDLECLEAN);

	FUNC0();
	FUNC2();

	FUNC6(dev);
}