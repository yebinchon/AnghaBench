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
typedef  size_t u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short const) ; 

void FUNC1(const unsigned short per[])
{
	u16 cnt;
	for (cnt = 0; per[cnt] != 0; cnt++)
		FUNC0(per[cnt]);
}