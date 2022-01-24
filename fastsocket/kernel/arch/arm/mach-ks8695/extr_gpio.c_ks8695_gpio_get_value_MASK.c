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
 int EINVAL ; 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned int KS8695_GPIO_15 ; 
 scalar_t__ KS8695_GPIO_VA ; 
 scalar_t__ KS8695_IOPD ; 
 unsigned long FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned int pin)
{
	unsigned long x;

	if (pin > KS8695_GPIO_15)
		return -EINVAL;

	x = FUNC1(KS8695_GPIO_VA + KS8695_IOPD);
	return (x & FUNC0(pin)) != 0;
}