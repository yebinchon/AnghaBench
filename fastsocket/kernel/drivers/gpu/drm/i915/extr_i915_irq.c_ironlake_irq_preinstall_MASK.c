#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_received; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIMR ; 
 int /*<<< orphan*/  GTIER ; 
 int /*<<< orphan*/  GTIMR ; 
 int /*<<< orphan*/  HWSTAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDEIER ; 
 int /*<<< orphan*/  SDEIMR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

	FUNC2(&dev_priv->irq_received, 0);

	FUNC0(HWSTAM, 0xeffe);

	/* XXX hotplug from PCH */

	FUNC0(DEIMR, 0xffffffff);
	FUNC0(DEIER, 0x0);
	FUNC1(DEIER);

	/* and GT */
	FUNC0(GTIMR, 0xffffffff);
	FUNC0(GTIER, 0x0);
	FUNC1(GTIER);

	/* south display irq */
	FUNC0(SDEIMR, 0xffffffff);
	FUNC0(SDEIER, 0x0);
	FUNC1(SDEIER);
}