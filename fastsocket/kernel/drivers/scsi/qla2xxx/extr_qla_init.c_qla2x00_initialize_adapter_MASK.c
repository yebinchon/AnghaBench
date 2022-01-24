#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct req_que {int /*<<< orphan*/  ring; } ;
struct TYPE_24__ {int chip_reset_done; scalar_t__ disable_serdes; scalar_t__ eeh_busy; scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {int thermal_support; TYPE_3__ flags; int /*<<< orphan*/  cs84xx; TYPE_2__* isp_ops; int /*<<< orphan*/  rsp_qid_map; int /*<<< orphan*/  req_qid_map; scalar_t__ beacon_blink_led; scalar_t__ isp_abort_cnt; struct req_que** req_q_map; } ;
struct TYPE_22__ {scalar_t__ management_server_logged_in; scalar_t__ reset_active; scalar_t__ online; } ;
struct TYPE_25__ {int /*<<< orphan*/ * port_name; scalar_t__ marker_needed; TYPE_1__ flags; scalar_t__ dpc_flags; int /*<<< orphan*/  device_flags; int /*<<< orphan*/  loop_state; int /*<<< orphan*/  loop_down_timer; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_23__ {int (* pci_config ) (TYPE_4__*) ;int (* chip_diag ) (TYPE_4__*) ;int /*<<< orphan*/  (* nvram_config ) (TYPE_4__*) ;int /*<<< orphan*/  (* get_flash_version ) (TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset_chip ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DFLG_NO_CABLE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  LOOP_DOWN ; 
 int /*<<< orphan*/  LOOP_DOWN_TIME ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int THERMAL_SUPPORT_I2C ; 
 int THERMAL_SUPPORT_ISP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int FUNC21 (TYPE_4__*) ; 

int
FUNC22(scsi_qla_host_t *vha)
{
	int	rval;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req = ha->req_q_map[0];

	/* Clear adapter flags. */
	vha->flags.online = 0;
	ha->flags.chip_reset_done = 0;
	vha->flags.reset_active = 0;
	ha->flags.pci_channel_io_perm_failure = 0;
	ha->flags.eeh_busy = 0;
	ha->thermal_support = THERMAL_SUPPORT_I2C|THERMAL_SUPPORT_ISP;
	FUNC4(&vha->loop_down_timer, LOOP_DOWN_TIME);
	FUNC4(&vha->loop_state, LOOP_DOWN);
	vha->device_flags = DFLG_NO_CABLE;
	vha->dpc_flags = 0;
	vha->flags.management_server_logged_in = 0;
	vha->marker_needed = 0;
	ha->isp_abort_cnt = 0;
	ha->beacon_blink_led = 0;

	FUNC16(0, ha->req_qid_map);
	FUNC16(0, ha->rsp_qid_map);

	FUNC5(ql_dbg_init, vha, 0x0040,
	    "Configuring PCI space...\n");
	rval = ha->isp_ops->pci_config(vha);
	if (rval) {
		FUNC6(ql_log_warn, vha, 0x0044,
		    "Unable to configure PCI space.\n");
		return (rval);
	}

	ha->isp_ops->reset_chip(vha);

	rval = FUNC11(vha);
	if (rval) {
		FUNC6(ql_log_fatal, vha, 0x004f,
		    "Unable to validate FLASH data.\n");
		return (rval);
	}

	ha->isp_ops->get_flash_version(vha, req->ring);
	FUNC5(ql_dbg_init, vha, 0x0061,
	    "Configure NVRAM parameters...\n");

	ha->isp_ops->nvram_config(vha);

	if (ha->flags.disable_serdes) {
		/* Mask HBA via NVRAM settings? */
		FUNC6(ql_log_info, vha, 0x0077,
		    "Masking HBA WWPN "
		    "%02x%02x%02x%02x%02x%02x%02x%02x (via NVRAM).\n",
		    vha->port_name[0], vha->port_name[1],
		    vha->port_name[2], vha->port_name[3],
		    vha->port_name[4], vha->port_name[5],
		    vha->port_name[6], vha->port_name[7]);
		return QLA_FUNCTION_FAILED;
	}

	FUNC5(ql_dbg_init, vha, 0x0078,
	    "Verifying loaded RISC code...\n");

	if (FUNC9(vha) != QLA_SUCCESS) {
		rval = ha->isp_ops->chip_diag(vha);
		if (rval)
			return (rval);
		rval = FUNC10(vha);
		if (rval)
			return (rval);
	}

	if (FUNC3(ha)) {
		ha->cs84xx = FUNC13(vha);
		if (!ha->cs84xx) {
			FUNC6(ql_log_warn, vha, 0x00d0,
			    "Unable to configure ISP84XX.\n");
			return QLA_FUNCTION_FAILED;
		}
	}
	rval = FUNC8(vha);
	ha->flags.chip_reset_done = 1;

	if (rval == QLA_SUCCESS && FUNC3(ha)) {
		/* Issue verify 84xx FW IOCB to complete 84xx initialization */
		rval = FUNC14(vha);
		if (rval != QLA_SUCCESS) {
			FUNC6(ql_log_warn, vha, 0x00d4,
			    "Unable to initialize ISP84XX.\n");
		FUNC15(vha);
		}
	}

	/* Load the NIC Core f/w if we are the first protocol driver. */
	if (FUNC2(ha)) {
		rval = FUNC12(vha);
		if (rval)
			FUNC6(ql_log_warn, vha, 0x0122,
			    "Error in initializing NIC Core f/w.\n");
	}

	if (FUNC0(ha) || FUNC1(ha))
		FUNC7(vha);

	return (rval);
}