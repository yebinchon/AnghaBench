#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  aux_icm; } ;
struct TYPE_13__ {TYPE_5__ arbel; } ;
struct TYPE_11__ {int /*<<< orphan*/  mtt_table; int /*<<< orphan*/  mpt_table; } ;
struct TYPE_10__ {int /*<<< orphan*/  qp_table; int /*<<< orphan*/  eqp_table; int /*<<< orphan*/  rdb_table; } ;
struct TYPE_9__ {int /*<<< orphan*/  table; } ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;
struct TYPE_14__ {int /*<<< orphan*/  table; } ;
struct mthca_dev {int mthca_flags; TYPE_6__ fw; TYPE_4__ mr_table; TYPE_3__ qp_table; TYPE_2__ cq_table; TYPE_1__ srq_table; TYPE_7__ mcg_table; } ;

/* Variables and functions */
 int MTHCA_FLAG_SRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*) ; 

__attribute__((used)) static void FUNC4(struct mthca_dev *mdev)
{

	FUNC2(mdev, mdev->mcg_table.table);
	if (mdev->mthca_flags & MTHCA_FLAG_SRQ)
		FUNC2(mdev, mdev->srq_table.table);
	FUNC2(mdev, mdev->cq_table.table);
	FUNC2(mdev, mdev->qp_table.rdb_table);
	FUNC2(mdev, mdev->qp_table.eqp_table);
	FUNC2(mdev, mdev->qp_table.qp_table);
	FUNC2(mdev, mdev->mr_table.mpt_table);
	FUNC2(mdev, mdev->mr_table.mtt_table);
	FUNC3(mdev);

	FUNC0(mdev);
	FUNC1(mdev, mdev->fw.arbel.aux_icm, 0);
}