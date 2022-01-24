#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mthca_mailbox {scalar_t__ buf; } ;
struct mthca_eq_context {int dummy; } ;
struct mthca_eq {int nent; TYPE_2__* page_list; int /*<<< orphan*/  mr; int /*<<< orphan*/  eqn; int /*<<< orphan*/  eqn_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  arm_mask; } ;
struct mthca_dev {int /*<<< orphan*/  pdev; TYPE_1__ eq_table; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int MTHCA_EQ_ENTRY_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  mapping ; 
 int FUNC3 (struct mthca_dev*,struct mthca_mailbox*,int /*<<< orphan*/ ) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void FUNC12(struct mthca_dev *dev,
			  struct mthca_eq *eq)
{
	struct mthca_mailbox *mailbox;
	int err;
	int npages = (eq->nent * MTHCA_EQ_ENTRY_SIZE + PAGE_SIZE - 1) /
		PAGE_SIZE;
	int i;

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return;

	err = FUNC3(dev, mailbox, eq->eqn);
	if (err)
		FUNC8(dev, "HW2SW_EQ returned %d\n", err);

	dev->eq_table.arm_mask &= ~eq->eqn_mask;

	if (0) {
		FUNC5(dev, "Dumping EQ context %02x:\n", eq->eqn);
		for (i = 0; i < sizeof (struct mthca_eq_context) / 4; ++i) {
			if (i % 4 == 0)
				FUNC11("[%02x] ", i * 4);
			FUNC11(" %08x", FUNC1(mailbox->buf + i * 4));
			if ((i + 1) % 4 == 0)
				FUNC11("\n");
		}
	}

	FUNC7(dev, &eq->mr);
	for (i = 0; i < npages; ++i)
		FUNC9(dev->pdev, PAGE_SIZE,
				    eq->page_list[i].buf,
				    FUNC10(&eq->page_list[i], mapping));

	FUNC2(eq->page_list);
	FUNC6(dev, mailbox);
}