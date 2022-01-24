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
typedef  int u8 ;
typedef  int u16 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VGA_AR_DATA_WRITE ; 
 int /*<<< orphan*/  VGA_AR_INDEX ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev, u16 st01, u8 reg, u8 val, u16 palette_enable)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC0(st01);
	FUNC1(VGA_AR_INDEX, palette_enable | reg);
	FUNC1(VGA_AR_DATA_WRITE, val);
}