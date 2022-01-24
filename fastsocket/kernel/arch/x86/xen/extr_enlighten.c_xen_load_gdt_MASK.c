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
struct desc_struct {int dummy; } ;
struct desc_ptr {unsigned long address; int size; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long*,unsigned int) ; 
 unsigned long PAGE_MASK ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 unsigned long FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const struct desc_ptr *dtr)
{
	unsigned long va = dtr->address;
	unsigned int size = dtr->size + 1;
	unsigned pages = (size + PAGE_SIZE - 1) / PAGE_SIZE;
	unsigned long frames[pages];
	int f;

	/*
	 * A GDT can be up to 64k in size, which corresponds to 8192
	 * 8-byte entries, or 16 4k pages..
	 */

	FUNC1(size > 65536);
	FUNC1(va & ~PAGE_MASK);

	for (f = 0; va < dtr->address + size; va += PAGE_SIZE, f++) {
		int level;
		pte_t *ptep;
		unsigned long pfn, mfn;
		void *virt;

		/*
		 * The GDT is per-cpu and is in the percpu data area.
		 * That can be virtually mapped, so we need to do a
		 * page-walk to get the underlying MFN for the
		 * hypercall.  The page can also be in the kernel's
		 * linear range, so we need to RO that mapping too.
		 */
		ptep = FUNC5(va, &level);
		FUNC1(ptep == NULL);

		pfn = FUNC8(*ptep);
		mfn = FUNC7(pfn);
		virt = FUNC4(FUNC3(pfn));

		frames[f] = mfn;

		FUNC6((void *)va);
		FUNC6(virt);
	}

	if (FUNC2(frames, size / sizeof(struct desc_struct)))
		FUNC0();
}