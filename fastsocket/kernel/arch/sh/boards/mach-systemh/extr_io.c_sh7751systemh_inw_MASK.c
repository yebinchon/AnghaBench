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
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned short* FUNC3 (unsigned long) ; 

unsigned short FUNC4(unsigned long port)
{
        if (FUNC1(port))
                return *(volatile unsigned short *)port;
	else if (port >= 0x2000)
		return *FUNC3(port);
	else if (port <= 0x3F1)
		return *(volatile unsigned int *)FUNC0(port);
	else
		FUNC2(port);
	return 0;
}