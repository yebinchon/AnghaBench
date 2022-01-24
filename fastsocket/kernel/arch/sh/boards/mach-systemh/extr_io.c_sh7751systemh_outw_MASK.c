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

void FUNC4(unsigned short value, unsigned long port)
{
        if (FUNC1(port))
                *(volatile unsigned short *)port = value;
	else if (port >= 0x2000)
		*FUNC3(port) = value;
	else if (port <= 0x3F1)
		*(volatile unsigned short *)FUNC0(port) = value;
	else
		FUNC2(port);
}