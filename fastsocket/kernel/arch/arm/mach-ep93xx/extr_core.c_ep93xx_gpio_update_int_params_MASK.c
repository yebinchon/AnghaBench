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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int* gpio_int_enabled ; 
 int* gpio_int_type1 ; 
 int* gpio_int_type2 ; 
 int* gpio_int_unmasked ; 
 int /*<<< orphan*/ * int_en_register_offset ; 
 int /*<<< orphan*/ * int_type1_register_offset ; 
 int /*<<< orphan*/ * int_type2_register_offset ; 

void FUNC3(unsigned port)
{
	FUNC0(port > 2);

	FUNC2(0, FUNC1(int_en_register_offset[port]));

	FUNC2(gpio_int_type2[port],
		FUNC1(int_type2_register_offset[port]));

	FUNC2(gpio_int_type1[port],
		FUNC1(int_type1_register_offset[port]));

	FUNC2(gpio_int_unmasked[port] & gpio_int_enabled[port],
		FUNC1(int_en_register_offset[port]));
}