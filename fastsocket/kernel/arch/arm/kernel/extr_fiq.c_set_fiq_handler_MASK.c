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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void *start, unsigned int length)
{
	FUNC1((void *)0xffff001c, start, length);
	FUNC0(0xffff001c, 0xffff001c + length);
	if (!FUNC2())
		FUNC0(0x1c, 0x1c + length);
}