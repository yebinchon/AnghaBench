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

/* Variables and functions */
 int /*<<< orphan*/  SIO_GPIO_UNIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc8736x_gpio_config_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static inline u32 FUNC6(unsigned index, u32 mask, u32 bits,
					    u32 func_slct)
{
	u32 config, new_config;

	FUNC1(&pc8736x_gpio_config_lock);

	FUNC0(SIO_GPIO_UNIT);
	FUNC3(index);

	/* read current config value */
	config = FUNC4(func_slct);

	/* set new config */
	new_config = (config & mask) | bits;
	FUNC5(func_slct, new_config);

	FUNC2(&pc8736x_gpio_config_lock);

	return config;
}