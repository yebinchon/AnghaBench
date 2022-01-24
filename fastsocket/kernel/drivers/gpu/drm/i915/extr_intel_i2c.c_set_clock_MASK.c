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
struct intel_gmbus {int /*<<< orphan*/  gpio_reg; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int GPIO_CLOCK_DIR_IN ; 
 int GPIO_CLOCK_DIR_MASK ; 
 int GPIO_CLOCK_DIR_OUT ; 
 int GPIO_CLOCK_VAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_gmbus*) ; 

__attribute__((used)) static void FUNC3(void *data, int state_high)
{
	struct intel_gmbus *bus = data;
	struct drm_i915_private *dev_priv = bus->dev_priv;
	u32 reserved = FUNC2(bus);
	u32 clock_bits;

	if (state_high)
		clock_bits = GPIO_CLOCK_DIR_IN | GPIO_CLOCK_DIR_MASK;
	else
		clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
			GPIO_CLOCK_VAL_MASK;

	FUNC0(bus->gpio_reg, reserved | clock_bits);
	FUNC1(bus->gpio_reg);
}