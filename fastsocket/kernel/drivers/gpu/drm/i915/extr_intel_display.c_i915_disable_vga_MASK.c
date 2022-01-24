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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int /*<<< orphan*/  pdev; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SR01 ; 
 int /*<<< orphan*/  VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  VGA_RSRC_LEGACY_IO ; 
 int /*<<< orphan*/  VGA_SR_DATA ; 
 int /*<<< orphan*/  VGA_SR_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u8 sr1;
	u32 vga_reg = FUNC2(dev);

	FUNC6(dev->pdev, VGA_RSRC_LEGACY_IO);
	FUNC4(SR01, VGA_SR_INDEX);
	sr1 = FUNC3(VGA_SR_DATA);
	FUNC4(sr1 | 1<<5, VGA_SR_DATA);
	FUNC7(dev->pdev, VGA_RSRC_LEGACY_IO);
	FUNC5(300);

	FUNC0(vga_reg, VGA_DISP_DISABLE);
	FUNC1(vga_reg);
}