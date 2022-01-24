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
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

unsigned char FUNC3(unsigned long port)
{
	if (port >= 0x300 && port < 0x320 && port & 0x01)
		return FUNC1(port - 1) >> 8;

	return FUNC0(FUNC2(port));
}