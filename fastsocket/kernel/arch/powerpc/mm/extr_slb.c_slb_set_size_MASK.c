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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ mmu_slb_size ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,scalar_t__) ; 

void FUNC1(u16 size)
{
	extern unsigned int *slb_compare_rr_to_size;

	if (mmu_slb_size == size)
		return;

	mmu_slb_size = size;
	FUNC0(slb_compare_rr_to_size, mmu_slb_size);
}