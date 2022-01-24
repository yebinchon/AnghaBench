#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int status; int l2_err; int memio_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_BUS_L2_ERRORS ; 
 int /*<<< orphan*/  A_BUS_MEM_IO_ERRORS ; 
 int /*<<< orphan*/  A_SCD_BUS_ERR_STATUS ; 
 int /*<<< orphan*/  A_SCD_BUS_ERR_STATUS_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bw_stats ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	u32 status, l2_err, memio_err;

#ifdef CONFIG_SB1_PASS_1_WORKAROUNDS
	/* Destructive read, clears register and interrupt */
	status = csr_in32(IOADDR(A_SCD_BUS_ERR_STATUS));
#else
	/* Use non-destructive register */
	status = FUNC1(FUNC0(A_SCD_BUS_ERR_STATUS_DEBUG));
#endif
	if (!(status & 0x7fffffff)) {
		FUNC3("Using last values reaped by bus watcher driver\n");
		status = bw_stats.status;
		l2_err = bw_stats.l2_err;
		memio_err = bw_stats.memio_err;
	} else {
		l2_err = FUNC1(FUNC0(A_BUS_L2_ERRORS));
		memio_err = FUNC1(FUNC0(A_BUS_MEM_IO_ERRORS));
	}
	if (status & ~(1UL << 31))
		FUNC2(status, l2_err, memio_err);
	else
		FUNC3("Bus watcher indicates no error\n");
}