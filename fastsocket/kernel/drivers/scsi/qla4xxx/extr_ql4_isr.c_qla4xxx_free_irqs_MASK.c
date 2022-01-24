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
struct scsi_qla_host {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INTx_ENABLED ; 
 int /*<<< orphan*/  AF_IRQ_ATTACHED ; 
 int /*<<< orphan*/  AF_MSIX_ENABLED ; 
 int /*<<< orphan*/  AF_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct scsi_qla_host *ha)
{
	if (FUNC3(AF_IRQ_ATTACHED, &ha->flags)) {
		if (FUNC4(AF_MSIX_ENABLED, &ha->flags)) {
			FUNC2(ha);
		} else if (FUNC3(AF_MSI_ENABLED, &ha->flags)) {
			FUNC0(ha->pdev->irq, ha);
			FUNC1(ha->pdev);
		} else if (FUNC3(AF_INTx_ENABLED, &ha->flags)) {
			FUNC0(ha->pdev->irq, ha);
		}
	}
}