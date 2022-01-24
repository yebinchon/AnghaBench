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
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 

unsigned short FUNC3(unsigned long port)
{
	if (port >= 0x300 && port < 0x320)
		return FUNC2(FUNC1(port));

	return *(volatile unsigned short *)FUNC0(port);
}