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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  flags; TYPE_1__* qla4_83xx_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  leg_int_mask; int /*<<< orphan*/  mbox_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_83XX_MBOX_INTR_ON ; 
 int /*<<< orphan*/  INT_ENABLE_FW_MB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_qla_host *ha)
{
	uint32_t mb_int;

	if (!FUNC1(AF_83XX_MBOX_INTR_ON, &ha->flags)) {
		mb_int = INT_ENABLE_FW_MB;
		FUNC2(mb_int, &ha->qla4_83xx_reg->mbox_int);
		FUNC2(0, &ha->qla4_83xx_reg->leg_int_mask);
		FUNC0(AF_83XX_MBOX_INTR_ON, &ha->flags);
	}
}