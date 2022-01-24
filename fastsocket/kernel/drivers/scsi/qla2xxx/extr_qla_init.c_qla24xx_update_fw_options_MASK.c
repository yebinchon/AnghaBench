#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/ * fw_seriallink_options24; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_0 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC3 (TYPE_1__*,int,int,int) ; 

void
FUNC4(scsi_qla_host_t *vha)
{
	int rval;
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha))
		return;

	/* Update Serial Link options. */
	if ((FUNC1(ha->fw_seriallink_options24[0]) & BIT_0) == 0)
		return;

	rval = FUNC3(vha,
	    FUNC1(ha->fw_seriallink_options24[1]),
	    FUNC1(ha->fw_seriallink_options24[2]),
	    FUNC1(ha->fw_seriallink_options24[3]));
	if (rval != QLA_SUCCESS) {
		FUNC2(ql_log_warn, vha, 0x0104,
		    "Unable to update Serial Link options (%x).\n", rval);
	}
}