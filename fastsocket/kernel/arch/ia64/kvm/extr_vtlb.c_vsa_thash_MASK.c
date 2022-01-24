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
union ia64_pta {int size; int base; } ;
typedef  int u64 ;
struct thash_data {int dummy; } ;

/* Variables and functions */
 int PTA_BASE_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

struct thash_data *FUNC3(union ia64_pta vpta, u64 va, u64 vrr, u64 *tag)
{
	u64 index, pfn, rid, pfn_bits;

	pfn_bits = vpta.size - 5 - 8;
	pfn = FUNC0(va) >> FUNC2(vrr);
	rid = FUNC1(vrr);
	index = ((rid & 0xff) << pfn_bits)|(pfn & ((1UL << pfn_bits) - 1));
	*tag = ((rid >> 8) & 0xffff) | ((pfn >> pfn_bits) << 16);

	return (struct thash_data *)((vpta.base << PTA_BASE_SHIFT) +
				(index << 5));
}