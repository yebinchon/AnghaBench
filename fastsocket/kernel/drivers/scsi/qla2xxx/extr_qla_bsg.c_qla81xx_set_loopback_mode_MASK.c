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
typedef  scalar_t__ uint16_t ;
struct TYPE_11__ {scalar_t__ idc_compl_status; } ;
struct qla_hw_data {int notify_dcbx_comp; TYPE_2__ flags; TYPE_1__* isp_ops; int /*<<< orphan*/  dcbx_comp; } ;
struct TYPE_12__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* fw_dump ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DCBX_COMP_TIMEOUT ; 
 int EINVAL ; 
 int ENABLE_EXTERNAL_LOOPBACK ; 
 int ENABLE_INTERNAL_LOOPBACK ; 
 scalar_t__ EXTERNAL_LOOPBACK ; 
 int HZ ; 
 scalar_t__ INTERNAL_LOOPBACK ; 
 scalar_t__ INTERNAL_LOOPBACK_MASK ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC5 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int
FUNC10(scsi_qla_host_t *vha, uint16_t *config,
    uint16_t *new_config, uint16_t mode)
{
	int ret = 0;
	int rval = 0;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC1(ha) && !FUNC0(ha))
		goto done_set_internal;

	if (mode == INTERNAL_LOOPBACK)
		new_config[0] = config[0] | (ENABLE_INTERNAL_LOOPBACK << 1);
	else if (mode == EXTERNAL_LOOPBACK)
		new_config[0] = config[0] | (ENABLE_EXTERNAL_LOOPBACK << 1);
	FUNC3(ql_dbg_user, vha, 0x70be,
	     "new_config[0]=%02x\n", (new_config[0] & INTERNAL_LOOPBACK_MASK));

	FUNC2(&new_config[1], &config[1], sizeof(uint16_t) * 3);

	ha->notify_dcbx_comp = 1;
	ret = FUNC6(vha, new_config);
	if (ret != QLA_SUCCESS) {
		FUNC4(ql_log_warn, vha, 0x7021,
		    "set port config failed.\n");
		ha->notify_dcbx_comp = 0;
		rval = -EINVAL;
		goto done_set_internal;
	}

	/* Wait for DCBX complete event */
	if (!FUNC9(&ha->dcbx_comp,
	    (DCBX_COMP_TIMEOUT * HZ))) {
		FUNC3(ql_dbg_user, vha, 0x7022,
		    "DCBX completion not received.\n");
		ret = FUNC5(vha, new_config, 0, 0);
		/*
		 * If the reset of the loopback mode doesn't work take a FCoE
		 * dump and reset the chip.
		 */
		if (ret) {
			ha->isp_ops->fw_dump(vha, 0);
			FUNC7(ISP_ABORT_NEEDED, &vha->dpc_flags);
		}
		rval = -EINVAL;
	} else {
                if (ha->flags.idc_compl_status) {
			FUNC3(ql_dbg_user, vha, 0x70c3,
			    "Bad status in IDC Completion AEN\n");
			rval = -EINVAL;
			ha->flags.idc_compl_status = 0;
		} else
			FUNC3(ql_dbg_user, vha, 0x7023,
			    "DCBX completion received.\n");
	}

	ha->notify_dcbx_comp = 0;

done_set_internal:
	return rval;
}