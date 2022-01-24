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
typedef  scalar_t__ uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA82XX_PEG_ALIVE_COUNTER ; 
 int /*<<< orphan*/  QLA8XXX_DEV_FAILED ; 
 int /*<<< orphan*/  QLA8XXX_DEV_INITIALIZING ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 int FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(scsi_qla_host_t *vha)
{
	int rval = QLA_SUCCESS;
	int i, timeout;
	uint32_t old_count, count;
	struct qla_hw_data *ha = vha->hw;
	int need_reset = 0, peg_stuck = 1;

	need_reset = FUNC5(ha);

	old_count = FUNC6(ha, QLA82XX_PEG_ALIVE_COUNTER);

	for (i = 0; i < 10; i++) {
		timeout = FUNC0(200);
		if (timeout) {
			FUNC9(ha, QLA82XX_CRB_DEV_STATE,
				QLA8XXX_DEV_FAILED);
			return QLA_FUNCTION_FAILED;
		}

		count = FUNC6(ha, QLA82XX_PEG_ALIVE_COUNTER);
		if (count != old_count)
			peg_stuck = 0;
	}

	if (need_reset) {
		/* We are trying to perform a recovery here. */
		if (peg_stuck)
			FUNC7(ha);
		goto dev_initialize;
	} else  {
		/* Start of day for this ha context. */
		if (peg_stuck) {
			/* Either we are the first or recovery in progress. */
			FUNC7(ha);
			goto dev_initialize;
		} else
			/* Firmware already running. */
			goto dev_ready;
	}

	return rval;

dev_initialize:
	/* set to DEV_INITIALIZING */
	FUNC1(ql_log_info, vha, 0x009e,
	    "HW State: INITIALIZING.\n");
	FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_INITIALIZING);

	FUNC4(ha);
	rval = FUNC8(vha);
	FUNC3(ha);

	if (rval != QLA_SUCCESS) {
		FUNC1(ql_log_fatal, vha, 0x00ad,
		    "HW State: FAILED.\n");
		FUNC2(ha);
		FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_FAILED);
		return rval;
	}

dev_ready:
	FUNC1(ql_log_info, vha, 0x00ae,
	    "HW State: READY.\n");
	FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

	return QLA_SUCCESS;
}