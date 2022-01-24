#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/  quiesce_owner; int /*<<< orphan*/  nic_core_reset_owner; } ;
struct qla_hw_data {unsigned long fcoe_dev_init_timeout; TYPE_2__ flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  init_done; } ;
struct TYPE_14__ {TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 unsigned long HZ ; 
 int MAX_STATES ; 
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
#define  QLA8XXX_DEV_COLD 134 
#define  QLA8XXX_DEV_FAILED 133 
#define  QLA8XXX_DEV_INITIALIZING 132 
#define  QLA8XXX_DEV_NEED_QUIESCENT 131 
#define  QLA8XXX_DEV_NEED_RESET 130 
#define  QLA8XXX_DEV_QUIESCENT 129 
#define  QLA8XXX_DEV_READY 128 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  ql2xdontresethba ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 

int
FUNC13(scsi_qla_host_t *vha)
{
	uint32_t dev_state;
	uint32_t old_dev_state;
	int rval = QLA_SUCCESS;
	unsigned long dev_init_timeout;
	struct qla_hw_data *ha = vha->hw;
	int loopcount = 0;

	FUNC4(ha);
	if (!vha->flags.init_done) {
		FUNC9(vha);
		FUNC10(vha);
	}

	dev_state = FUNC8(ha, QLA82XX_CRB_DEV_STATE);
	old_dev_state = dev_state;
	FUNC2(ql_log_info, vha, 0x009b,
	    "Device state is 0x%x = %s.\n",
	    dev_state,
	    dev_state < MAX_STATES ? FUNC1(dev_state) : "Unknown");

	/* wait for 30 seconds for device to go ready */
	dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout * HZ);

	while (1) {

		if (FUNC12(jiffies, dev_init_timeout)) {
			FUNC2(ql_log_fatal, vha, 0x009c,
			    "Device init failed.\n");
			rval = QLA_FUNCTION_FAILED;
			break;
		}
		dev_state = FUNC8(ha, QLA82XX_CRB_DEV_STATE);
		if (old_dev_state != dev_state) {
			loopcount = 0;
			old_dev_state = dev_state;
		}
		if (loopcount < 5) {
			FUNC2(ql_log_info, vha, 0x009d,
			    "Device state is 0x%x = %s.\n",
			    dev_state,
			    dev_state < MAX_STATES ? FUNC1(dev_state) :
			    "Unknown");
		}
		switch (dev_state) {
		case QLA8XXX_DEV_READY:
			ha->flags.nic_core_reset_owner = 0;
			goto rel_lock;
		case QLA8XXX_DEV_COLD:
			rval = FUNC3(vha);
			break;
		case QLA8XXX_DEV_INITIALIZING:
			FUNC5(ha);
			FUNC0(1000);
			FUNC4(ha);
			break;
		case QLA8XXX_DEV_NEED_RESET:
			if (!ql2xdontresethba)
				FUNC7(vha);
			else {
				FUNC5(ha);
				FUNC0(1000);
				FUNC4(ha);
			}
			dev_init_timeout = jiffies +
			    (ha->fcoe_dev_init_timeout * HZ);
			break;
		case QLA8XXX_DEV_NEED_QUIESCENT:
			FUNC6(vha);
			/* Reset timeout value after quiescence handler */
			dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout\
							* HZ);
			break;
		case QLA8XXX_DEV_QUIESCENT:
			/* Owner will exit and other will wait for the state
			 * to get changed
			 */
			if (ha->flags.quiesce_owner)
				goto rel_lock;

			FUNC5(ha);
			FUNC0(1000);
			FUNC4(ha);

			/* Reset timeout value after quiescence handler */
			dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout\
							* HZ);
			break;
		case QLA8XXX_DEV_FAILED:
			FUNC11(vha);
			rval = QLA_FUNCTION_FAILED;
			goto exit;
		default:
			FUNC5(ha);
			FUNC0(1000);
			FUNC4(ha);
		}
		loopcount++;
	}
rel_lock:
	FUNC5(ha);
exit:
	return rval;
}