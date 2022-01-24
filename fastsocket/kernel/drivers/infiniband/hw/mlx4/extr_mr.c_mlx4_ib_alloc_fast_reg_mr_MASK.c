#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mr {TYPE_2__ mmr; struct ib_mr ibmr; int /*<<< orphan*/ * umem; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_mr*) ; 
 struct mlx4_ib_mr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct ib_pd*) ; 

struct ib_mr *FUNC8(struct ib_pd *pd,
					int max_page_list_len)
{
	struct mlx4_ib_dev *dev = FUNC6(pd->device);
	struct mlx4_ib_mr *mr;
	int err;

	mr = FUNC2(sizeof *mr, GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	err = FUNC3(dev->dev, FUNC7(pd)->pdn, 0, 0, 0,
			    max_page_list_len, 0, &mr->mmr);
	if (err)
		goto err_free;

	err = FUNC4(dev->dev, &mr->mmr);
	if (err)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
	mr->umem = NULL;

	return &mr->ibmr;

err_mr:
	(void) FUNC5(dev->dev, &mr->mmr);

err_free:
	FUNC1(mr);
	return FUNC0(err);
}