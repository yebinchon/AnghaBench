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
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  tgt_mask_reg; } ;
struct scsi_qla_host {int /*<<< orphan*/  spurious_int_count; TYPE_2__ nx_legacy_intr; int /*<<< orphan*/  flags; TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INTx_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct scsi_qla_host *ha,
    uint8_t reqs_count)
{
	if (reqs_count)
		return;

	FUNC0(FUNC2(KERN_INFO, ha, "Spurious Interrupt\n"));
	if (FUNC1(ha)) {
		FUNC5(0, &ha->qla4_82xx_reg->host_int);
		if (FUNC4(AF_INTx_ENABLED, &ha->flags))
			FUNC3(ha, ha->nx_legacy_intr.tgt_mask_reg,
			    0xfbff);
	}
	ha->spurious_int_count++;
}