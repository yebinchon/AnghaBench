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
struct TYPE_2__ {unsigned int tlbiel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_LOCKLESS_TLBIE ; 
 int /*<<< orphan*/  CPU_FTR_TLBIEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mmu_psize_defs ; 
 int /*<<< orphan*/  native_tlbie_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(unsigned long va, int psize, int ssize, int local)
{
	unsigned int use_local = local && FUNC2(CPU_FTR_TLBIEL);
	int lock_tlbie = !FUNC2(CPU_FTR_LOCKLESS_TLBIE);

	if (use_local)
		use_local = mmu_psize_defs[psize].tlbiel;
	if (lock_tlbie && !use_local)
		FUNC3(&native_tlbie_lock);
	asm volatile("ptesync": : :"memory");
	if (use_local) {
		FUNC1(va, psize, ssize);
		asm volatile("ptesync": : :"memory");
	} else {
		FUNC0(va, psize, ssize);
		asm volatile("eieio; tlbsync; ptesync": : :"memory");
	}
	if (lock_tlbie && !use_local)
		FUNC4(&native_tlbie_lock);
}