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
struct TYPE_5__ {int enable_64bit_addressing; } ;
struct qla_hw_data {TYPE_3__* pdev; TYPE_1__* isp_ops; TYPE_2__ flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  build_iocbs; int /*<<< orphan*/  calc_req_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qla2x00_build_scsi_iocbs_64 ; 
 int /*<<< orphan*/  qla2x00_calc_iocbs_64 ; 

__attribute__((used)) static void
FUNC5(struct qla_hw_data *ha)
{
	/* Assume a 32bit DMA mask. */
	ha->flags.enable_64bit_addressing = 0;

	if (!FUNC3(&ha->pdev->dev, FUNC0(64))) {
		/* Any upper-dword bits set? */
		if (FUNC1(FUNC2(&ha->pdev->dev)) &&
		    !FUNC4(ha->pdev, FUNC0(64))) {
			/* Ok, a 64bit DMA mask is applicable. */
			ha->flags.enable_64bit_addressing = 1;
			ha->isp_ops->calc_req_entries = qla2x00_calc_iocbs_64;
			ha->isp_ops->build_iocbs = qla2x00_build_scsi_iocbs_64;
			return;
		}
	}

	FUNC3(&ha->pdev->dev, FUNC0(32));
	FUNC4(ha->pdev, FUNC0(32));
}