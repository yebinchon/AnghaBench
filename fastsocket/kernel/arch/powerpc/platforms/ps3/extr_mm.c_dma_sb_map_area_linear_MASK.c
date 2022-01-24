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
typedef  int /*<<< orphan*/  u64 ;
struct ps3_dma_region {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ps3_dma_region*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ps3_dma_region *r,
	unsigned long virt_addr, unsigned long len, dma_addr_t *bus_addr,
	u64 iopte_flag)
{
	unsigned long phys_addr = FUNC2(virt_addr) ? FUNC0(virt_addr)
		: virt_addr;
	*bus_addr = FUNC1(r, FUNC3(phys_addr));
	return 0;
}