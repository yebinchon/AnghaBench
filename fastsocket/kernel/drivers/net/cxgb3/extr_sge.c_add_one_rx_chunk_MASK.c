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
struct rx_desc {void* gen2; void* len_gen; void* addr_hi; void* addr_lo; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline int FUNC4(dma_addr_t mapping, struct rx_desc *d,
				   unsigned int gen)
{
	d->addr_lo = FUNC2(mapping);
	d->addr_hi = FUNC2((u64) mapping >> 32);
	FUNC3();
	d->len_gen = FUNC2(FUNC0(gen));
	d->gen2 = FUNC2(FUNC1(gen));
	return 0;
}