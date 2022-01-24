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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rbtx4938_spi_gpio_lock ; 
 int /*<<< orphan*/  rbtx4938_spics_addr ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned int offset,
				  int value)
{
	u8 val;
	unsigned long flags;
	FUNC2(&rbtx4938_spi_gpio_lock, flags);
	val = FUNC1(rbtx4938_spics_addr);
	if (value)
		val |= 1 << offset;
	else
		val &= ~(1 << offset);
	FUNC4(val, rbtx4938_spics_addr);
	FUNC0();
	FUNC3(&rbtx4938_spi_gpio_lock, flags);
}