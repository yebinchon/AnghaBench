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
 int /*<<< orphan*/  GPIO_SCL ; 
 int /*<<< orphan*/  GPIO_SDA ; 
 int /*<<< orphan*/  IXP4XX_GPIO_OUT ; 
 int control_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	FUNC0(GPIO_SCL, IXP4XX_GPIO_OUT);
	FUNC0(GPIO_SDA, IXP4XX_GPIO_OUT);

	for (i = 0; i < 8; i++) {
		FUNC1(0);
		FUNC2(control_value & (0x80 >> i)); /* MSB first */
		FUNC1(1);	/* active edge */
	}

	FUNC3(1);
	FUNC3(0);

	FUNC1(0);
	FUNC2(1);		/* Be ready for START */
	FUNC1(1);
}