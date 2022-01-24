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
struct p54s_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  p54spi_gpio_irq ; 
 int /*<<< orphan*/  p54spi_gpio_power ; 

__attribute__((used)) static void FUNC4(struct p54s_priv *priv)
{
	FUNC1(p54spi_gpio_power, 1);
	FUNC0(FUNC2(p54spi_gpio_irq));

	/*
	 * need to wait a while before device can be accessed, the length
	 * is just a guess
	 */
	FUNC3(10);
}