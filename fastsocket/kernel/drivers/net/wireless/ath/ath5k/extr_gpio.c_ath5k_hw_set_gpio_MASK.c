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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_GPIODO ; 
 int AR5K_NUM_GPIO ; 
 int EINVAL ; 
 int FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct ath5k_hw *ah, u32 gpio, u32 val)
{
	u32 data;

	if (gpio >= AR5K_NUM_GPIO)
		return -EINVAL;

	/* GPIO output magic */
	data = FUNC0(ah, AR5K_GPIODO);

	data &= ~(1 << gpio);
	data |= (val & 1) << gpio;

	FUNC1(ah, data, AR5K_GPIODO);

	return 0;
}