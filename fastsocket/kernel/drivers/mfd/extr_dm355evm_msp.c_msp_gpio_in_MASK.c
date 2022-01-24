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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
#define  DM355EVM_MSP_SDMMC 130 
#define  DM355EVM_MSP_SWITCH1 129 
#define  DM355EVM_MSP_SWITCH2 128 
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *chip, unsigned offset)
{
	switch (FUNC0(offset)) {
	case DM355EVM_MSP_SWITCH1:
	case DM355EVM_MSP_SWITCH2:
	case DM355EVM_MSP_SDMMC:
		return 0;
	default:
		return -EINVAL;
	}
}