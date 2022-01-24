#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  din; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* txx9_pioptr ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *chip, unsigned int offset)
{
	return FUNC0(&txx9_pioptr->din) & (1 << offset);
}