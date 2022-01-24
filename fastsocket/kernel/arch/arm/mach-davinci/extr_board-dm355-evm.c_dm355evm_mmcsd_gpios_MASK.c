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

/* Variables and functions */
 unsigned int dm355evm_mmc_gpios ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,char*) ; 

__attribute__((used)) static void FUNC1(unsigned gpio)
{
	FUNC0(gpio + 0, "mmc0_ro");
	FUNC0(gpio + 1, "mmc0_cd");
	FUNC0(gpio + 2, "mmc1_ro");
	FUNC0(gpio + 3, "mmc1_cd");

	/* we "know" these are input-only so we don't
	 * need to call gpio_direction_input()
	 */

	dm355evm_mmc_gpios = gpio;
}