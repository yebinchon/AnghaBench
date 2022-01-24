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
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIIR ; 
 int /*<<< orphan*/  DEIMR ; 
 int /*<<< orphan*/  GTIER ; 
 int /*<<< orphan*/  GTIIR ; 
 int /*<<< orphan*/  GTIMR ; 
 int /*<<< orphan*/  HWSTAM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDEIER ; 
 int /*<<< orphan*/  SDEIIR ; 
 int /*<<< orphan*/  SDEIMR ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

	if (!dev_priv)
		return;

	FUNC1(HWSTAM, 0xffffffff);

	FUNC1(DEIMR, 0xffffffff);
	FUNC1(DEIER, 0x0);
	FUNC1(DEIIR, FUNC0(DEIIR));

	FUNC1(GTIMR, 0xffffffff);
	FUNC1(GTIER, 0x0);
	FUNC1(GTIIR, FUNC0(GTIIR));

	FUNC1(SDEIMR, 0xffffffff);
	FUNC1(SDEIER, 0x0);
	FUNC1(SDEIIR, FUNC0(SDEIIR));
}