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
 unsigned long LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 

void FUNC2(char *addr)
{
	unsigned long i;

	FUNC0(addr);
	for (i = 0; i < LENGTH; i++)
		if (*(addr + i) != (char)i) {
			FUNC1("Mismatch at %lu\n", i);
			break;
		}
}