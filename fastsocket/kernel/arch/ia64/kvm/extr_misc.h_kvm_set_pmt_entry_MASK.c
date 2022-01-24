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
typedef  unsigned long uint64_t ;
typedef  unsigned long u64 ;
struct kvm {int dummy; } ;
typedef  size_t gfn_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long* FUNC1 (struct kvm*) ; 

__attribute__((used)) static inline void FUNC2(struct kvm *kvm, gfn_t gfn,
		u64 paddr, u64 mem_flags)
{
	uint64_t *pmt_base = FUNC1(kvm);
	unsigned long pte;

	pte = FUNC0(paddr) | mem_flags;
	pmt_base[gfn] = pte;
}