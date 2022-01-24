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
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct TYPE_7__ {TYPE_2__ mr; } ;
struct ib_fmr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_fmr {TYPE_3__ mfmr; struct ib_fmr ibfmr; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_fmr_attr {int /*<<< orphan*/  page_shift; int /*<<< orphan*/  max_maps; int /*<<< orphan*/  max_pages; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_fmr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_fmr*) ; 
 struct mlx4_ib_fmr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct ib_pd*) ; 

struct ib_fmr *FUNC9(struct ib_pd *pd, int acc,
				 struct ib_fmr_attr *fmr_attr)
{
	struct mlx4_ib_dev *dev = FUNC7(pd->device);
	struct mlx4_ib_fmr *fmr;
	int err = -ENOMEM;

	fmr = FUNC3(sizeof *fmr, GFP_KERNEL);
	if (!fmr)
		return FUNC0(-ENOMEM);

	err = FUNC4(dev->dev, FUNC8(pd)->pdn, FUNC1(acc),
			     fmr_attr->max_pages, fmr_attr->max_maps,
			     fmr_attr->page_shift, &fmr->mfmr);
	if (err)
		goto err_free;

	err = FUNC5(FUNC7(pd->device)->dev, &fmr->mfmr);
	if (err)
		goto err_mr;

	fmr->ibfmr.rkey = fmr->ibfmr.lkey = fmr->mfmr.mr.key;

	return &fmr->ibfmr;

err_mr:
	(void) FUNC6(FUNC7(pd->device)->dev, &fmr->mfmr.mr);

err_free:
	FUNC2(fmr);

	return FUNC0(err);
}