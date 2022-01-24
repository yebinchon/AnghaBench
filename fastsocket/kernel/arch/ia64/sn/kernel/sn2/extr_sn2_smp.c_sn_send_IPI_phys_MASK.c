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
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SH_IPI_INT ; 
 int SH_IPI_INT_BASE_SHFT ; 
 long SH_IPI_INT_IDX_SHFT ; 
 long SH_IPI_INT_PID_SHFT ; 
 unsigned long SH_IPI_INT_SEND_SHFT ; 
 long SH_IPI_INT_TYPE_SHFT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (long volatile*,long) ; 
 int /*<<< orphan*/  sn2_global_ptc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(int nasid, long physid, int vector, int delivery_mode)
{
	long val;
	unsigned long flags = 0;
	volatile long *p;

	p = (long *)FUNC0(nasid, SH_IPI_INT);
	val = (1UL << SH_IPI_INT_SEND_SHFT) |
	    (physid << SH_IPI_INT_PID_SHFT) |
	    ((long)delivery_mode << SH_IPI_INT_TYPE_SHFT) |
	    ((long)vector << SH_IPI_INT_IDX_SHFT) |
	    (0x000feeUL << SH_IPI_INT_BASE_SHFT);

	FUNC2();
	if (FUNC1()) {
		FUNC4(&sn2_global_ptc_lock, flags);
	}
	FUNC3(p, val);
	if (FUNC1()) {
		FUNC6();
		FUNC5(&sn2_global_ptc_lock, flags);
	}

}