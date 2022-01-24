#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int running_gold_fw; } ;
struct qla_hw_data {TYPE_1__ flags; int /*<<< orphan*/  flt_region_gold_fw; int /*<<< orphan*/  flt_region_fw; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int ql2xfwloadbin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
	int rval;
	struct qla_hw_data *ha = vha->hw;

	if (ql2xfwloadbin == 2)
		goto try_blob_fw;

	/*
	 * FW Load priority:
	 * 1) Firmware residing in flash.
	 * 2) Firmware via request-firmware interface (.bin file).
	 * 3) Golden-Firmware residing in flash -- limited operation.
	 */
	rval = FUNC2(vha, srisc_addr, ha->flt_region_fw);
	if (rval == QLA_SUCCESS)
		return rval;

try_blob_fw:
	rval = FUNC1(vha, srisc_addr);
	if (rval == QLA_SUCCESS || !ha->flt_region_gold_fw)
		return rval;

	FUNC0(ql_log_info, vha, 0x0099,
	    "Attempting to fallback to golden firmware.\n");
	rval = FUNC2(vha, srisc_addr, ha->flt_region_gold_fw);
	if (rval != QLA_SUCCESS)
		return rval;

	FUNC0(ql_log_info, vha, 0x009a, "Update operational firmware.\n");
	ha->flags.running_gold_fw = 1;
	return rval;
}