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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long*) ; 

__attribute__((used)) static void FUNC2(unsigned long *bitmap, unsigned int base,
		       unsigned int extent, int new_value)
{
	unsigned int i;

	for (i = base; i < base + extent; i++) {
		if (new_value)
			FUNC1(i, bitmap);
		else
			FUNC0(i, bitmap);
	}
}