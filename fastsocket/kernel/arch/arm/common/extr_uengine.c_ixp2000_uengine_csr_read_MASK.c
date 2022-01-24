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
typedef  int u32 ;

/* Variables and functions */
 int LOCAL_CSR_STATUS ; 
 int FUNC0 (int*) ; 
 void* FUNC1 (int) ; 

u32 FUNC2(int uengine, int offset)
{
	void *uebase;
	u32 *local_csr_status;
	u32 *reg;
	u32 value;

	uebase = FUNC1(uengine);

	local_csr_status = (u32 *)(uebase + LOCAL_CSR_STATUS);
	reg = (u32 *)(uebase + offset);
	do {
		value = FUNC0(reg);
	} while (FUNC0(local_csr_status) & 1);

	return value;
}