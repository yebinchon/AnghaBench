#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct qla_hw_data {int notify_dcbx_comp; int notify_lb_portup_comp; int /*<<< orphan*/  lb_portup_comp; int /*<<< orphan*/  dcbx_comp; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  new_config ;

/* Variables and functions */
 int DCBX_COMP_TIMEOUT ; 
 int EINVAL ; 
 int ENABLE_EXTERNAL_LOOPBACK ; 
 int ENABLE_INTERNAL_LOOPBACK ; 
 int HZ ; 
 int INTERNAL_LOOPBACK_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int LB_PORTUP_COMP_TIMEOUT ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int
FUNC8(scsi_qla_host_t *vha, uint16_t *config,
			    int wait, int wait2)
{
	int ret = 0;
	int rval = 0;
	uint16_t new_config[4];
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC1(ha) && !FUNC0(ha))
		goto done_reset_internal;

	FUNC3(new_config, 0 , sizeof(new_config));
	if ((config[0] & INTERNAL_LOOPBACK_MASK) >> 1 ==
	    ENABLE_INTERNAL_LOOPBACK ||
	    (config[0] & INTERNAL_LOOPBACK_MASK) >> 1 ==
	    ENABLE_EXTERNAL_LOOPBACK) {
		new_config[0] = config[0] & ~INTERNAL_LOOPBACK_MASK;
		FUNC4(ql_dbg_user, vha, 0x70bf, "new_config[0]=%02x\n",
		    (new_config[0] & INTERNAL_LOOPBACK_MASK));
		FUNC2(&new_config[1], &config[1], sizeof(uint16_t) * 3) ;

		ha->notify_dcbx_comp = wait;
		ha->notify_lb_portup_comp = wait2;

		ret = FUNC6(vha, new_config);
		if (ret != QLA_SUCCESS) {
			FUNC5(ql_log_warn, vha, 0x7025,
			    "Set port config failed.\n");
			ha->notify_dcbx_comp = 0;
			ha->notify_lb_portup_comp = 0;
			rval = -EINVAL;
			goto done_reset_internal;
		}

		/* Wait for DCBX complete event */
		if (wait && !FUNC7(&ha->dcbx_comp,
			(DCBX_COMP_TIMEOUT * HZ))) {
			FUNC4(ql_dbg_user, vha, 0x7026,
			    "DCBX completion not received.\n");
			ha->notify_dcbx_comp = 0;
			ha->notify_lb_portup_comp = 0;
			rval = -EINVAL;
			goto done_reset_internal;
		} else
			FUNC4(ql_dbg_user, vha, 0x7027,
			    "DCBX completion received.\n");

		if (wait2 &&
		    !FUNC7(&ha->lb_portup_comp,
		    (LB_PORTUP_COMP_TIMEOUT * HZ))) {
			FUNC4(ql_dbg_user, vha, 0x70c5,
			    "Port up completion not received.\n");
			ha->notify_lb_portup_comp = 0;
			rval = -EINVAL;
			goto done_reset_internal;
		} else
			FUNC4(ql_dbg_user, vha, 0x70c6,
			    "Port up completion received.\n");

		ha->notify_dcbx_comp = 0;
		ha->notify_lb_portup_comp = 0;
	}
done_reset_internal:
	return rval;
}