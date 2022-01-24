#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int uarc_size; } ;
struct mthca_dev {TYPE_3__* db_tab; TYPE_1__ uar_table; } ;
struct TYPE_6__ {int npages; int min_group2; TYPE_2__* page; scalar_t__ max_group1; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/ * db_rec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MTHCA_ICM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mthca_dev *dev)
{
	int i;

	if (!FUNC2(dev))
		return 0;

	dev->db_tab = FUNC1(sizeof *dev->db_tab, GFP_KERNEL);
	if (!dev->db_tab)
		return -ENOMEM;

	FUNC3(&dev->db_tab->mutex);

	dev->db_tab->npages     = dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE;
	dev->db_tab->max_group1 = 0;
	dev->db_tab->min_group2 = dev->db_tab->npages - 1;

	dev->db_tab->page = FUNC1(dev->db_tab->npages *
				    sizeof *dev->db_tab->page,
				    GFP_KERNEL);
	if (!dev->db_tab->page) {
		FUNC0(dev->db_tab);
		return -ENOMEM;
	}

	for (i = 0; i < dev->db_tab->npages; ++i)
		dev->db_tab->page[i].db_rec = NULL;

	return 0;
}