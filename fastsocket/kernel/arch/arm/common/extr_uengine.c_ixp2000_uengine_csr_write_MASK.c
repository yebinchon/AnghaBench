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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int LOCAL_CSR_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 

void FUNC3(int uengine, int offset, u32 value)
{
	void *uebase;
	u32 *local_csr_status;
	u32 *reg;

	uebase = FUNC2(uengine);

	local_csr_status = (u32 *)(uebase + LOCAL_CSR_STATUS);
	reg = (u32 *)(uebase + offset);
	do {
		FUNC1(reg, value);
	} while (FUNC0(local_csr_status) & 1);
}