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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 long FUNC0 (int,int,int) ; 

long FUNC1(u32 which, u32 who, u32 niceval)
{
	/* sign extend which, who and niceval */
	return FUNC0((int)which, (int)who, (int)niceval);
}