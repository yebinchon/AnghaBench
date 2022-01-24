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
 int /*<<< orphan*/  FUNC2 () ; 
 int* FUNC3 (unsigned long) ; 

unsigned char FUNC4(unsigned long port)
{
	unsigned char v;

        if (FUNC1(port))
                v = *(volatile unsigned char *)port;
	else if (port <= 0x3F1)
		v = *(volatile unsigned char *)FUNC0(port);
	else
		v = (*FUNC3(port))&0xff;
	FUNC2();
	return v;
}