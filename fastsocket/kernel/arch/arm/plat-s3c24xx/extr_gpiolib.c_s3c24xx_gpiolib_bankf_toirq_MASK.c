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
 int IRQ_EINT0 ; 
 int IRQ_EINT4 ; 

__attribute__((used)) static int FUNC0(struct gpio_chip *chip, unsigned offset)
{
	if (offset < 4)
		return IRQ_EINT0 + offset;
	
	if (offset < 8)
		return IRQ_EINT4 + offset - 4;
	
	return -EINVAL;
}