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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char* FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

void FUNC3(unsigned char value, unsigned long port)
{
	if (FUNC2(port))
		*(FUNC1(port)) = value << 8;
	else
		*(FUNC1(port)) = value;
	FUNC0();
}