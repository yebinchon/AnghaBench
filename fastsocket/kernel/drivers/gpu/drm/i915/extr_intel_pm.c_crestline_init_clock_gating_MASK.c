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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEUC ; 
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I965_RCC_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  RAMCLK_GATE_D ; 
 int /*<<< orphan*/  RENCLK_GATE_D1 ; 
 int /*<<< orphan*/  RENCLK_GATE_D2 ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC0(RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
	FUNC0(RENCLK_GATE_D2, 0);
	FUNC0(DSPCLK_GATE_D, 0);
	FUNC0(RAMCLK_GATE_D, 0);
	FUNC1(DEUC, 0);
}