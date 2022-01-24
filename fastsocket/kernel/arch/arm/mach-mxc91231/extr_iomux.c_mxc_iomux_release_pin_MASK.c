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
 unsigned int FUNC0 (unsigned int const) ; 
 int PIN_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxc_pin_alloc_map ; 

void FUNC2(const unsigned int pin_mode)
{
	unsigned pad = FUNC0(pin_mode);

	if (pad < (PIN_MAX + 1))
		FUNC1(pad, mxc_pin_alloc_map);
}