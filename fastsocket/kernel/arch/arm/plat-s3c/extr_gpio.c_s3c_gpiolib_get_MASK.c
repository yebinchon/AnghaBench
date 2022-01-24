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
struct s3c_gpio_chip {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 struct s3c_gpio_chip* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct s3c_gpio_chip *ourchip = FUNC1(chip);
	unsigned long val;

	val = FUNC0(ourchip->base + 0x04);
	val >>= offset;
	val &= 1;

	return val;
}