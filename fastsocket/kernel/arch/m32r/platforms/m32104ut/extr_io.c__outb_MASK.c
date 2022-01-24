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
 unsigned long LAN_IOEND ; 
 unsigned long LAN_IOSTART ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

void FUNC3(unsigned char b, unsigned long port)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		FUNC2(b, FUNC1(port));
	else
		*(volatile unsigned char *)FUNC0(port) = b;
}