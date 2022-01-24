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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  RADEON_RE_STIPPLE_ADDR ; 
 int /*<<< orphan*/  RADEON_RE_STIPPLE_DATA ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void FUNC6(struct drm_device * dev, u32 * stipple)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	int i;
	RING_LOCALS;
	FUNC4("\n");

	FUNC1(35);

	FUNC5(FUNC2(RADEON_RE_STIPPLE_ADDR, 0));
	FUNC5(0x00000000);

	FUNC5(FUNC3(RADEON_RE_STIPPLE_DATA, 31));
	for (i = 0; i < 32; i++) {
		FUNC5(stipple[i]);
	}

	FUNC0();
}