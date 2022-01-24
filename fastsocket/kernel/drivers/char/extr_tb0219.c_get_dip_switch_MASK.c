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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  TB0219_DIP_SWITCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline char FUNC1(unsigned int pin)
{
	uint16_t values;

	values = FUNC0(TB0219_DIP_SWITCH);
	if (values & (1 << pin))
		return '1';

	return '0';
}