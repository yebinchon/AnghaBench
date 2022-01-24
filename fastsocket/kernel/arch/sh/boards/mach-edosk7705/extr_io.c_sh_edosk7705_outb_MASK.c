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
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(unsigned char value, unsigned long port)
{
	if (port >= 0x300 && port < 0x320 && port & 0x01) {
		FUNC1(((unsigned short)value << 8), port - 1);
		return;
	}

	FUNC0(value, FUNC2(port));
}