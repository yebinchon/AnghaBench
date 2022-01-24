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
typedef  int u64 ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 

__attribute__((used)) static u64
FUNC2(unsigned long paddr)
{
	dma_addr_t bus_addr;

	bus_addr = FUNC1(paddr);

	FUNC0(!bus_addr);
	FUNC0(bus_addr >> 54);

	/* Set upper nibble to Cache Coherent Memory op */
	bus_addr |= (1UL << 60);

	return bus_addr;
}