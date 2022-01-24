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
struct TYPE_2__ {unsigned long eaddr; unsigned long data; } ;

/* Variables and functions */
 int CPLB_NO_ADDR_MATCH ; 
 int CPLB_RELOADED ; 
 int FAULT_USERSUPV ; 
 unsigned long PAGE_SIZE_1MB ; 
 unsigned long PAGE_SIZE_4MB ; 
 int SIZE_1M ; 
 int SIZE_4M ; 
 unsigned long FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_1__* dcplb_bounds ; 
 int dcplb_nr_bounds ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * nr_dcplb_miss ; 
 int /*<<< orphan*/ * nr_dcplb_supv_miss ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(int cpu)
{
	unsigned long addr = FUNC0();
	int status = FUNC1();
	int idx;
	unsigned long d_data, base, addr1, eaddr;

	nr_dcplb_miss[cpu]++;
	if (FUNC3(status & FAULT_USERSUPV))
		nr_dcplb_supv_miss[cpu]++;

	base = 0;
	idx = 0;
	do {
		eaddr = dcplb_bounds[idx].eaddr;
		if (addr < eaddr)
			break;
		base = eaddr;
	} while (++idx < dcplb_nr_bounds);

	if (FUNC3(idx == dcplb_nr_bounds))
		return CPLB_NO_ADDR_MATCH;

	d_data = dcplb_bounds[idx].data;
	if (FUNC3(d_data == 0))
		return CPLB_NO_ADDR_MATCH;

	addr1 = addr & ~(SIZE_4M - 1);
	addr &= ~(SIZE_1M - 1);
	d_data |= PAGE_SIZE_1MB;
	if (addr1 >= base && (addr1 + SIZE_4M) <= eaddr) {
		/*
		 * This works because
		 * (PAGE_SIZE_4MB & PAGE_SIZE_1MB) == PAGE_SIZE_1MB.
		 */
		d_data |= PAGE_SIZE_4MB;
		addr = addr1;
	}

	/* Pick entry to evict */
	idx = FUNC2(cpu);

	FUNC4(cpu, idx, d_data, addr);

	return CPLB_RELOADED;
}