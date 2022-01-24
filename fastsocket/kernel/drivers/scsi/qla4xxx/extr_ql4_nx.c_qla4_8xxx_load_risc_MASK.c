#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {int /*<<< orphan*/  flags; TYPE_1__* qla4_82xx_reg; TYPE_2__* qla4_83xx_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  risc_intr; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IRQ_ATTACHED ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int FUNC2 (struct scsi_qla_host*) ; 
 int FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct scsi_qla_host *ha)
{
	int retval;

	/* clear the interrupt */
	if (FUNC1(ha)) {
		FUNC6(0, &ha->qla4_83xx_reg->risc_intr);
		FUNC4(&ha->qla4_83xx_reg->risc_intr);
	} else if (FUNC0(ha)) {
		FUNC6(0, &ha->qla4_82xx_reg->host_int);
		FUNC4(&ha->qla4_82xx_reg->host_int);
	}

	retval = FUNC2(ha);

	if (retval == QLA_SUCCESS && !FUNC5(AF_IRQ_ATTACHED, &ha->flags))
		retval = FUNC3(ha);

	return retval;
}