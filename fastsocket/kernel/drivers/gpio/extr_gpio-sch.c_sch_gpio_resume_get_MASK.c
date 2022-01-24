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
 scalar_t__ RGLV ; 
 scalar_t__ gpio_ba ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *gc, unsigned gpio_num)
{
	return !!(FUNC0(gpio_ba + RGLV) & (1 << gpio_num));
}