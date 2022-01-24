#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int dummy; } ;
struct bnad {int cfg_flags; int msix_num; int /*<<< orphan*/  bna_lock; TYPE_1__* msix_table; int /*<<< orphan*/  pcidev; } ;
struct TYPE_4__ {int entry; } ;

/* Variables and functions */
 int BNAD_CF_MSIX ; 
 int BNAD_MAILBOX_MSIX_VECTORS ; 
 int BNAD_NUM_RXP ; 
 int BNAD_NUM_TXQ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC9(struct bnad *bnad)
{
	int i, ret;
	unsigned long flags;

	FUNC7(&bnad->bna_lock, flags);
	if (!(bnad->cfg_flags & BNAD_CF_MSIX)) {
		FUNC8(&bnad->bna_lock, flags);
		return;
	}
	FUNC8(&bnad->bna_lock, flags);

	if (bnad->msix_table)
		return;

	bnad->msix_table =
		FUNC2(bnad->msix_num, sizeof(struct msix_entry), GFP_KERNEL);

	if (!bnad->msix_table)
		goto intx_mode;

	for (i = 0; i < bnad->msix_num; i++)
		bnad->msix_table[i].entry = i;

	ret = FUNC4(bnad->pcidev, bnad->msix_table, bnad->msix_num);
	if (ret > 0) {
		/* Not enough MSI-X vectors. */
		FUNC6("BNA: %d MSI-X vectors allocated < %d requested\n",
			ret, bnad->msix_num);

		FUNC7(&bnad->bna_lock, flags);
		/* ret = #of vectors that we got */
		FUNC0(bnad, (ret - BNAD_MAILBOX_MSIX_VECTORS) / 2,
			(ret - BNAD_MAILBOX_MSIX_VECTORS) / 2);
		FUNC8(&bnad->bna_lock, flags);

		bnad->msix_num = BNAD_NUM_TXQ + BNAD_NUM_RXP +
			 BNAD_MAILBOX_MSIX_VECTORS;

		if (bnad->msix_num > ret)
			goto intx_mode;

		/* Try once more with adjusted numbers */
		/* If this fails, fall back to INTx */
		ret = FUNC4(bnad->pcidev, bnad->msix_table,
				      bnad->msix_num);
		if (ret)
			goto intx_mode;

	} else if (ret < 0)
		goto intx_mode;

	FUNC5(bnad->pcidev, 0);

	return;

intx_mode:
	FUNC6("BNA: MSI-X enable failed - operating in INTx mode\n");

	FUNC3(bnad->msix_table);
	bnad->msix_table = NULL;
	bnad->msix_num = 0;
	FUNC7(&bnad->bna_lock, flags);
	bnad->cfg_flags &= ~BNAD_CF_MSIX;
	FUNC1(bnad);
	FUNC8(&bnad->bna_lock, flags);
}