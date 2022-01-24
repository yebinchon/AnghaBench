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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned int value,
				     unsigned int field_value,
				     unsigned int handle)
{
	unsigned int width = FUNC1(handle);
	unsigned int shift = FUNC0(handle);

	value &= ~(((1 << width) - 1) << shift);
	value |= field_value << shift;
	return value;
}