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
struct mmu_update {int /*<<< orphan*/  val; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  pud_t ;
struct TYPE_2__ {int /*<<< orphan*/  maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  pud_update_batched ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_update*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void FUNC9(pud_t *ptr, pud_t val)
{
	struct mmu_update u;

	FUNC3();

	FUNC7();

	/* ptr may be ioremapped for 64-bit pagetable setup */
	u.ptr = FUNC1(ptr).maddr;
	u.val = FUNC5(val);
	FUNC6(&u);

	FUNC0(pud_update_batched, FUNC2() == PARAVIRT_LAZY_MMU);

	FUNC8(PARAVIRT_LAZY_MMU);

	FUNC4();
}