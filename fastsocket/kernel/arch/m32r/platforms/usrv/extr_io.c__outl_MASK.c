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
typedef  int /*<<< orphan*/  l ;

/* Variables and functions */
 unsigned long CFC_IOEND ; 
 unsigned long CFC_IOSTART ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long*,int,int,int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long l, unsigned long port)
{
	if (port >= CFC_IOSTART && port <= CFC_IOEND)
		FUNC1(0, port, &l, sizeof(l), 1, 0);
	else
		*(volatile unsigned long *)FUNC0(port) = l;
}