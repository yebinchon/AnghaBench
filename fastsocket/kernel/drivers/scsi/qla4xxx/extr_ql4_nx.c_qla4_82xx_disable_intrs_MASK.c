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
struct TYPE_2__ {int /*<<< orphan*/  tgt_mask_reg; } ;
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; TYPE_1__ nx_legacy_intr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INTERRUPTS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct scsi_qla_host *ha)
{
	if (FUNC4(AF_INTERRUPTS_ON, &ha->flags))
		FUNC1(ha);

	FUNC2(&ha->hardware_lock);
	/* BIT 10 - set */
	FUNC0(ha, ha->nx_legacy_intr.tgt_mask_reg, 0x0400);
	FUNC3(&ha->hardware_lock);
}