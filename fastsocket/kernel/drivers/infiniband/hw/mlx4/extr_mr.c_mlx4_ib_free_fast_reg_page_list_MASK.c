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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {struct mlx4_ib_fast_reg_page_list* page_list; } ;
struct mlx4_ib_fast_reg_page_list {TYPE_1__ ibfrpl; int /*<<< orphan*/  map; int /*<<< orphan*/  mapped_page_list; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_fast_reg_page_list {int max_page_list_len; int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_fast_reg_page_list*) ; 
 struct mlx4_ib_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_fast_reg_page_list* FUNC3 (struct ib_fast_reg_page_list*) ; 

void FUNC4(struct ib_fast_reg_page_list *page_list)
{
	struct mlx4_ib_dev *dev = FUNC2(page_list->device);
	struct mlx4_ib_fast_reg_page_list *mfrpl = FUNC3(page_list);
	int size = page_list->max_page_list_len * sizeof (u64);

	FUNC0(&dev->dev->pdev->dev, size, mfrpl->mapped_page_list,
			  mfrpl->map);
	FUNC1(mfrpl->ibfrpl.page_list);
	FUNC1(mfrpl);
}