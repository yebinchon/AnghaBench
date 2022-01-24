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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(u8 reg, int nr, int mode)
{
	/* temp1-temp2 (nr=0,1) use lower nibble */
	if (nr < 2)
		return FUNC0(reg & 0x0f, mode);

	/* temp3-temp4 (nr=2,3) use upper nibble */
	else
		return FUNC0(reg >> 4 & 0x0f, mode);
}