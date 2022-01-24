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
 int PC_CKS_LOC ; 
 int PC_CKS_RANGE_END ; 
 int PC_CKS_RANGE_START ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(void)
{
	int i;
	unsigned short sum = 0;
	unsigned short expect;

	for (i = PC_CKS_RANGE_START; i <= PC_CKS_RANGE_END; ++i)
		sum += FUNC0(i);
	expect = FUNC0(PC_CKS_LOC)<<8 |
	    FUNC0(PC_CKS_LOC+1);
	return (sum & 0xffff) == expect;
}