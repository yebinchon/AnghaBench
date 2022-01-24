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
struct ia64_tr_entry {int pte; int rr; int itir; int /*<<< orphan*/  ifa; } ;

/* Variables and functions */
 int IA64_TR_ALLOC_BASE ; 
 int IA64_TR_ALLOC_MAX ; 
 struct ia64_tr_entry*** __per_cpu_idtrs ; 
 unsigned long FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9(u64 iord)
{

	int i;
	u64 old_rr;
	struct ia64_tr_entry *p;
	unsigned long psr;
	int cpu = FUNC8();

	psr = FUNC0();
	for (i = IA64_TR_ALLOC_BASE; i < IA64_TR_ALLOC_MAX; i++) {
		p = &__per_cpu_idtrs[cpu][iord-1][i];
		if (p->pte & 0x1) {
			old_rr = FUNC1(p->ifa);
			if (old_rr != p->rr) {
				FUNC5(p->ifa, p->rr);
				FUNC6();
			}
			FUNC3(iord, p->ifa, p->itir >> 2);
			FUNC7();
			if (iord & 0x1) {
				FUNC2(0x1, i, p->ifa, p->pte, p->itir >> 2);
				FUNC7();
			}
			if (iord & 0x2) {
				FUNC2(0x2, i, p->ifa, p->pte, p->itir >> 2);
				FUNC7();
			}
			if (old_rr != p->rr) {
				FUNC5(p->ifa, old_rr);
				FUNC6();
			}
		}
	}
	FUNC4(psr);
}