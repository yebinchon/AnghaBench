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
struct flush_tlb_data {unsigned long addr1; unsigned long addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  flush_tlb_kernel_range_ipi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 

void FUNC1(unsigned long start, unsigned long end)
{
	struct flush_tlb_data fd;

	fd.addr1 = start;
	fd.addr2 = end;
	FUNC0(flush_tlb_kernel_range_ipi, (void *)&fd, 1);
}