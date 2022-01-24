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
struct mthca_dev {TYPE_2__* db_tab; TYPE_1__* pdev; int /*<<< orphan*/  driver_uar; } ;
struct TYPE_4__ {int npages; struct TYPE_4__* page; int /*<<< orphan*/  mapping; int /*<<< orphan*/  db_rec; int /*<<< orphan*/  used; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_DB_REC_PER_PAGE ; 
 int /*<<< orphan*/  MTHCA_ICM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,char*,int) ; 

void FUNC7(struct mthca_dev *dev)
{
	int i;

	if (!FUNC4(dev))
		return;

	/*
	 * Because we don't always free our UARC pages when they
	 * become empty to make mthca_free_db() simpler we need to
	 * make a sweep through the doorbell pages and free any
	 * leftover pages now.
	 */
	for (i = 0; i < dev->db_tab->npages; ++i) {
		if (!dev->db_tab->page[i].db_rec)
			continue;

		if (!FUNC0(dev->db_tab->page[i].used, MTHCA_DB_REC_PER_PAGE))
			FUNC6(dev, "Kernel UARC page %d not empty\n", i);

		FUNC3(dev, FUNC5(dev, &dev->driver_uar, i), 1);

		FUNC1(&dev->pdev->dev, MTHCA_ICM_PAGE_SIZE,
				  dev->db_tab->page[i].db_rec,
				  dev->db_tab->page[i].mapping);
	}

	FUNC2(dev->db_tab->page);
	FUNC2(dev->db_tab);
}