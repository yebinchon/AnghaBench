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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  unsigned long uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_BUS_L2_ERRORS ; 
 int /*<<< orphan*/  A_BUS_MEM_IO_ERRORS ; 
 int /*<<< orphan*/  A_L2_ECC_TAG ; 
 int /*<<< orphan*/  A_SCD_BUS_ERR_STATUS ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
	uint32_t status, l2_err, memio_err;
#ifdef DUMP_L2_ECC_TAG_ON_ERROR
	uint64_t l2_tag;
#endif

	/* Destructive read, clears register and interrupt */
	status = FUNC4(FUNC3(A_SCD_BUS_ERR_STATUS));
	/* Bit 31 is always on, but there's no #define for that */
	if (status & ~(1UL << 31)) {
		l2_err = FUNC4(FUNC3(A_BUS_L2_ERRORS));
#ifdef DUMP_L2_ECC_TAG_ON_ERROR
		l2_tag = in64(IOADDR(A_L2_ECC_TAG));
#endif
		memio_err = FUNC4(FUNC3(A_BUS_MEM_IO_ERRORS));
		FUNC6("Bus watcher error counters: %08x %08x\n", l2_err, memio_err);
		FUNC6("\nLast recorded signature:\n");
		FUNC6("Request %02x from %d, answered by %d with Dcode %d\n",
		       (unsigned int)(FUNC2(status) & 0x3f),
		       (int)(FUNC2(status) >> 6),
		       (int)FUNC1(status),
		       (int)FUNC0(status));
#ifdef DUMP_L2_ECC_TAG_ON_ERROR
		printk("Last L2 tag w/ bad ECC: %016llx\n", l2_tag);
#endif
	} else {
		FUNC6("Bus watcher indicates no error\n");
	}
}