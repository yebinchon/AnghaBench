#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/  device; } ;
struct mlx4_ib_fmr {TYPE_1__ ibfmr; int /*<<< orphan*/  mfmr; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_fmr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_fmr* FUNC2 (struct ib_fmr*) ; 

int FUNC3(struct ib_fmr *ibfmr, u64 *page_list,
		      int npages, u64 iova)
{
	struct mlx4_ib_fmr *ifmr = FUNC2(ibfmr);
	struct mlx4_ib_dev *dev = FUNC1(ifmr->ibfmr.device);

	return FUNC0(dev->dev, &ifmr->mfmr, page_list, npages, iova,
				 &ifmr->ibfmr.lkey, &ifmr->ibfmr.rkey);
}