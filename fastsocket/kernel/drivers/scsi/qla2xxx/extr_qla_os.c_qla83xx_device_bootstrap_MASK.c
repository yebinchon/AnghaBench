#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA83XX_IDC_DEV_STATE ; 
 int /*<<< orphan*/  QLA83XX_IDC_GRACEFUL_RESET ; 
 int /*<<< orphan*/  QLA8XXX_DEV_FAILED ; 
 int /*<<< orphan*/  QLA8XXX_DEV_INITIALIZING ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(scsi_qla_host_t *vha)
{
	int rval = QLA_SUCCESS;
	uint32_t idc_control;

	FUNC7(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_INITIALIZING);
	FUNC3(ql_log_info, vha, 0xb069, "HW State: INITIALIZING.\n");

	/* Clearing IDC-Control Graceful-Reset Bit before resetting f/w */
	FUNC0(vha, &idc_control);
	idc_control &= ~QLA83XX_IDC_GRACEFUL_RESET;
	FUNC1(vha, 0);

	FUNC5(vha, 0);
	rval = FUNC6(vha);
	FUNC4(vha, 0);

	if (rval != QLA_SUCCESS) {
		FUNC3(ql_log_fatal, vha, 0xb06a,
		    "Failed to restart NIC f/w.\n");
		FUNC7(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_FAILED);
		FUNC3(ql_log_info, vha, 0xb06b, "HW State: FAILED.\n");
	} else {
		FUNC2(ql_dbg_p3p, vha, 0xb06c,
		    "Success in restarting nic f/w.\n");
		FUNC7(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_READY);
		FUNC3(ql_log_info, vha, 0xb06d, "HW State: READY.\n");
	}

	return rval;
}