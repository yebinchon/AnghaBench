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
 int DABRX_KERNEL ; 
 int DABRX_USER ; 
 scalar_t__ FUNC0 (unsigned long,int) ; 

int FUNC1(unsigned long dabr)
{
	if (FUNC0(dabr, DABRX_KERNEL | DABRX_USER))
		return -1;
	return 0;
}