#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct mthca_user_db_table {int /*<<< orphan*/  mutex; TYPE_2__* page; } ;
struct mthca_uar {int dummy; } ;
struct TYPE_5__ {int uarc_size; } ;
struct mthca_dev {int /*<<< orphan*/  pdev; TYPE_1__ uar_table; } ;
struct TYPE_7__ {int /*<<< orphan*/  mm; } ;
struct TYPE_6__ {int refcount; int uvirt; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int EINVAL ; 
 int MTHCA_DB_REC_PER_PAGE ; 
 int /*<<< orphan*/  MTHCA_ICM_PAGE_SIZE ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 TYPE_3__* current ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,struct mthca_uar*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int) ; 

int FUNC12(struct mthca_dev *dev, struct mthca_uar *uar,
		      struct mthca_user_db_table *db_tab, int index, u64 uaddr)
{
	struct page *pages[1];
	int ret = 0;
	int i;

	if (!FUNC2(dev))
		return 0;

	if (index < 0 || index > dev->uar_table.uarc_size / 8)
		return -EINVAL;

	FUNC4(&db_tab->mutex);

	i = index / MTHCA_DB_REC_PER_PAGE;

	if ((db_tab->page[i].refcount >= MTHCA_DB_REC_PER_PAGE)       ||
	    (db_tab->page[i].uvirt && db_tab->page[i].uvirt != uaddr) ||
	    (uaddr & 4095)) {
		ret = -EINVAL;
		goto out;
	}

	if (db_tab->page[i].refcount) {
		++db_tab->page[i].refcount;
		goto out;
	}

	ret = FUNC0(current, current->mm, uaddr & PAGE_MASK, 1, 1, 0,
			     pages, NULL);
	if (ret < 0)
		goto out;

	FUNC11(&db_tab->page[i].mem, pages[0], MTHCA_ICM_PAGE_SIZE,
			uaddr & ~PAGE_MASK);

	ret = FUNC6(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
	if (ret < 0) {
		FUNC8(pages[0]);
		goto out;
	}

	ret = FUNC1(dev, FUNC9(&db_tab->page[i].mem),
				 FUNC3(dev, uar, i));
	if (ret) {
		FUNC7(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
		FUNC8(FUNC10(&db_tab->page[i].mem));
		goto out;
	}

	db_tab->page[i].uvirt    = uaddr;
	db_tab->page[i].refcount = 1;

out:
	FUNC5(&db_tab->mutex);
	return ret;
}