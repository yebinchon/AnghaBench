#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct scsi_qla_host *ha)
{
	int retval;

	/* Update our PCI device dma_mask for full 64 bit mask */
	if (FUNC3(ha->pdev, FUNC0(64)) == 0) {
		if (FUNC2(ha->pdev, FUNC0(64))) {
			FUNC1(&ha->pdev->dev,
				  "Failed to set 64 bit PCI consistent mask; "
				   "using 32 bit.\n");
			retval = FUNC2(ha->pdev,
							     FUNC0(32));
		}
	} else
		retval = FUNC3(ha->pdev, FUNC0(32));
}