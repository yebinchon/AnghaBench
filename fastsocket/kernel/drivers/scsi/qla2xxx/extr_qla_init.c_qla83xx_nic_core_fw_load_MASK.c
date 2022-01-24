#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_15__ {scalar_t__ nic_core_reset_owner; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; int /*<<< orphan*/  fcoe_reset_timeout; int /*<<< orphan*/  fcoe_dev_init_timeout; } ;
struct TYPE_16__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  QLA83XX_IDC_DEV_STATE ; 
 int /*<<< orphan*/  QLA83XX_IDC_INITIALIZATION_TIMEOUT ; 
 int /*<<< orphan*/  QLA83XX_IDC_LOCK_RECOVERY ; 
 int /*<<< orphan*/  QLA83XX_IDC_MAJOR_VERSION ; 
 int /*<<< orphan*/  QLA83XX_IDC_MINOR_VERSION ; 
 int /*<<< orphan*/  QLA83XX_IDC_RESET_ACK_TIMEOUT ; 
 scalar_t__ QLA83XX_SUPP_IDC_MAJOR_VERSION ; 
 int QLA83XX_SUPP_IDC_MINOR_VERSION ; 
 scalar_t__ QLA8XXX_DEV_READY ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(scsi_qla_host_t *vha)
{
	int rval = QLA_SUCCESS;
	struct qla_hw_data *ha = vha->hw;
	uint32_t idc_major_ver, idc_minor_ver;
	uint16_t config[4];

	FUNC6(vha, 0);

	/* SV: TODO: Assign initialization timeout from
	 * flash-info / other param
	 */
	ha->fcoe_dev_init_timeout = QLA83XX_IDC_INITIALIZATION_TIMEOUT;
	ha->fcoe_reset_timeout = QLA83XX_IDC_RESET_ACK_TIMEOUT;

	/* Set our fcoe function presence */
	if (FUNC1(vha) != QLA_SUCCESS) {
		FUNC3(ql_dbg_p3p, vha, 0xb077,
		    "Error while setting DRV-Presence.\n");
		rval = QLA_FUNCTION_FAILED;
		goto exit;
	}

	/* Decide the reset ownership */
	FUNC10(vha);

	/*
	 * On first protocol driver load:
	 * Init-Owner: Set IDC-Major-Version and Clear IDC-Lock-Recovery
	 * register.
	 * Others: Check compatibility with current IDC Major version.
	 */
	FUNC9(vha, QLA83XX_IDC_MAJOR_VERSION, &idc_major_ver);
	if (ha->flags.nic_core_reset_owner) {
		/* Set IDC Major version */
		idc_major_ver = QLA83XX_SUPP_IDC_MAJOR_VERSION;
		FUNC11(vha, QLA83XX_IDC_MAJOR_VERSION, idc_major_ver);

		/* Clearing IDC-Lock-Recovery register */
		FUNC11(vha, QLA83XX_IDC_LOCK_RECOVERY, 0);
	} else if (idc_major_ver != QLA83XX_SUPP_IDC_MAJOR_VERSION) {
		/*
		 * Clear further IDC participation if we are not compatible with
		 * the current IDC Major Version.
		 */
		FUNC4(ql_log_warn, vha, 0xb07d,
		    "Failing load, idc_major_ver=%d, expected_major_ver=%d.\n",
		    idc_major_ver, QLA83XX_SUPP_IDC_MAJOR_VERSION);
		FUNC0(vha);
		rval = QLA_FUNCTION_FAILED;
		goto exit;
	}
	/* Each function sets its supported Minor version. */
	FUNC9(vha, QLA83XX_IDC_MINOR_VERSION, &idc_minor_ver);
	idc_minor_ver |= (QLA83XX_SUPP_IDC_MINOR_VERSION << (ha->portnum * 2));
	FUNC11(vha, QLA83XX_IDC_MINOR_VERSION, idc_minor_ver);

	if (ha->flags.nic_core_reset_owner) {
		FUNC2(config, 0, sizeof(config));
		if (!FUNC5(vha, config))
			FUNC11(vha, QLA83XX_IDC_DEV_STATE,
			    QLA8XXX_DEV_READY);
	}

	rval = FUNC7(vha);

exit:
	FUNC8(vha, 0);

	return rval;
}