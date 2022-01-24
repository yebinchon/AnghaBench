#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_1__* isp_ops; int /*<<< orphan*/  fw_major_version; TYPE_2__ flags; } ;
struct TYPE_12__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_10__ {int (* chip_diag ) (TYPE_3__*) ;int /*<<< orphan*/  (* reset_chip ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_TIMEOUT ; 
 int QLA_INVALID_COMMAND ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 

void
FUNC6(scsi_qla_host_t *vha)
{
	int ret, retries;
	struct qla_hw_data *ha = vha->hw;

	if (ha->flags.pci_channel_io_perm_failure)
		return;
	if (!FUNC0(ha))
		return;
	if (!ha->fw_major_version)
		return;

	ret = FUNC3(vha);
	for (retries = 5; ret != QLA_SUCCESS && ret != QLA_FUNCTION_TIMEOUT &&
	    ret != QLA_INVALID_COMMAND && retries ; retries--) {
		ha->isp_ops->reset_chip(vha);
		if (ha->isp_ops->chip_diag(vha) != QLA_SUCCESS)
			continue;
		if (FUNC2(vha) != QLA_SUCCESS)
			continue;
		FUNC1(ql_log_info, vha, 0x8015,
		    "Attempting retry of stop-firmware command.\n");
		ret = FUNC3(vha);
	}
}