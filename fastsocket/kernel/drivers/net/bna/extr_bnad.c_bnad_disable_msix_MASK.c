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
typedef  int u32 ;
struct bnad {int cfg_flags; int /*<<< orphan*/ * msix_table; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  bna_lock; } ;

/* Variables and functions */
 int BNAD_CF_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct bnad *bnad)
{
	u32 cfg_flags;
	unsigned long flags;

	FUNC2(&bnad->bna_lock, flags);
	cfg_flags = bnad->cfg_flags;
	if (bnad->cfg_flags & BNAD_CF_MSIX)
		bnad->cfg_flags &= ~BNAD_CF_MSIX;
	FUNC3(&bnad->bna_lock, flags);

	if (cfg_flags & BNAD_CF_MSIX) {
		FUNC1(bnad->pcidev);
		FUNC0(bnad->msix_table);
		bnad->msix_table = NULL;
	}
}