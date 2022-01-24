#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mthca_user_db_table {TYPE_2__* page; } ;
struct mthca_uar {int dummy; } ;
struct TYPE_3__ {int uarc_size; } ;
struct mthca_dev {int /*<<< orphan*/  pdev; TYPE_1__ uar_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  mem; scalar_t__ uvirt; } ;

/* Variables and functions */
 int MTHCA_ICM_PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_user_db_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,struct mthca_uar*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mthca_dev *dev, struct mthca_uar *uar,
			       struct mthca_user_db_table *db_tab)
{
	int i;

	if (!FUNC2(dev))
		return;

	for (i = 0; i < dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE; ++i) {
		if (db_tab->page[i].uvirt) {
			FUNC1(dev, FUNC3(dev, uar, i), 1);
			FUNC4(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
			FUNC5(FUNC6(&db_tab->page[i].mem));
		}
	}

	FUNC0(db_tab);
}