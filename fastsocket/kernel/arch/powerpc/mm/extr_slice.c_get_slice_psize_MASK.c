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
typedef  int u64 ;
struct TYPE_2__ {int low_slices_psize; int high_slices_psize; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long SLICE_LOW_TOP ; 

unsigned int FUNC2(struct mm_struct *mm, unsigned long addr)
{
	u64 psizes;
	int index;

	if (addr < SLICE_LOW_TOP) {
		psizes = mm->context.low_slices_psize;
		index = FUNC1(addr);
	} else {
		psizes = mm->context.high_slices_psize;
		index = FUNC0(addr);
	}

	return (psizes >> (index * 4)) & 0xf;
}