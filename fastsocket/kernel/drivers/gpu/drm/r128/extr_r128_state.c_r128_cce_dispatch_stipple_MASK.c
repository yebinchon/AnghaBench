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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R128_BRUSH_DATA0 ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, u32 *stipple)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	int i;
	RING_LOCALS;
	FUNC3("\n");

	FUNC1(33);

	FUNC4(FUNC2(R128_BRUSH_DATA0, 31));
	for (i = 0; i < 32; i++)
		FUNC4(stipple[i]);

	FUNC0();
}