#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int serial0; int serial2; int serial1; char* model_number; char* adapter_id; int /*<<< orphan*/  ms_iocb_dma; int /*<<< orphan*/  ms_iocb; TYPE_4__* isp_ops; scalar_t__ model_desc; TYPE_2__* ct_sns; } ;
struct TYPE_25__ {scalar_t__ reason_code; scalar_t__ explanation_code; } ;
struct ct_sns_rsp {TYPE_8__ header; } ;
struct TYPE_20__ {void* count; } ;
struct TYPE_23__ {int /*<<< orphan*/ * hba_identifier; TYPE_3__ attrs; int /*<<< orphan*/ * port_name; void* entry_count; } ;
struct TYPE_24__ {TYPE_6__ rhba; } ;
struct ct_sns_req {TYPE_7__ req; } ;
struct TYPE_22__ {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  orom_version; int /*<<< orphan*/  driver_version; int /*<<< orphan*/  hw_version; int /*<<< orphan*/  model_desc; int /*<<< orphan*/  model; int /*<<< orphan*/  serial_num; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/ * node_name; } ;
struct ct_fdmi_hba_attr {TYPE_5__ a; void* len; void* type; } ;
struct TYPE_26__ {int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_name; struct qla_hw_data* hw; } ;
typedef  TYPE_9__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  ms_iocb_entry_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* fw_version_str ) (TYPE_9__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* prep_ms_fdmi_iocb ) (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {struct ct_sns_rsp rsp; int /*<<< orphan*/  req; } ;
struct TYPE_19__ {TYPE_1__ p; } ;

/* Variables and functions */
 scalar_t__ CT_EXPL_ALREADY_REGISTERED ; 
 scalar_t__ CT_REASON_CANNOT_PERFORM ; 
 int FDMI_HBA_ATTR_COUNT ; 
 int FDMI_HBA_DRIVER_VERSION ; 
 int FDMI_HBA_FIRMWARE_VERSION ; 
 int FDMI_HBA_HARDWARE_VERSION ; 
 int FDMI_HBA_MANUFACTURER ; 
 int FDMI_HBA_MODEL ; 
 int FDMI_HBA_MODEL_DESCRIPTION ; 
 int FDMI_HBA_NODE_NAME ; 
 int FDMI_HBA_OPTION_ROM_VERSION ; 
 int FDMI_HBA_SERIAL_NUMBER ; 
 int QLA_ALREADY_REGISTERED ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RHBA_CMD ; 
 int /*<<< orphan*/  RHBA_RSP_SIZE ; 
 int WWN_SIZE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_9__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_9__*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_9__*,int /*<<< orphan*/ *,struct ct_sns_rsp*,char*) ; 
 int FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ct_sns_req* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int) ; 
 char* qla2x00_version_str ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(scsi_qla_host_t *vha)
{
	int rval, alen;
	uint32_t size, sn;

	ms_iocb_entry_t *ms_pkt;
	struct ct_sns_req *ct_req;
	struct ct_sns_rsp *ct_rsp;
	uint8_t *entries;
	struct ct_fdmi_hba_attr *eiter;
	struct qla_hw_data *ha = vha->hw;

	/* Issue RHBA */
	/* Prepare common MS IOCB */
	/*   Request size adjusted after CT preparation */
	ms_pkt = ha->isp_ops->prep_ms_fdmi_iocb(vha, 0, RHBA_RSP_SIZE);

	/* Prepare CT request */
	ct_req = FUNC8(&ha->ct_sns->p.req, RHBA_CMD,
	    RHBA_RSP_SIZE);
	ct_rsp = &ha->ct_sns->p.rsp;

	/* Prepare FDMI command arguments -- attribute block, attributes. */
	FUNC3(ct_req->req.rhba.hba_identifier, vha->port_name, WWN_SIZE);
	ct_req->req.rhba.entry_count = FUNC1(1);
	FUNC3(ct_req->req.rhba.port_name, vha->port_name, WWN_SIZE);
	size = 2 * WWN_SIZE + 4 + 4;

	/* Attributes */
	ct_req->req.rhba.attrs.count =
	    FUNC1(FDMI_HBA_ATTR_COUNT);
	entries = ct_req->req.rhba.hba_identifier;

	/* Nodename. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_NODE_NAME);
	eiter->len = FUNC0(4 + WWN_SIZE);
	FUNC3(eiter->a.node_name, vha->node_name, WWN_SIZE);
	size += 4 + WWN_SIZE;

	FUNC4(ql_dbg_disc, vha, 0x2025,
	    "NodeName = %02x%02x%02x%02x%02x%02x%02x%02x.\n",
	    eiter->a.node_name[0], eiter->a.node_name[1],
	    eiter->a.node_name[2], eiter->a.node_name[3],
	    eiter->a.node_name[4], eiter->a.node_name[5],
	    eiter->a.node_name[6], eiter->a.node_name[7]);

	/* Manufacturer. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_MANUFACTURER);
	FUNC11(eiter->a.manufacturer, "QLogic Corporation");
	alen = FUNC12(eiter->a.manufacturer);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x2026,
	    "Manufacturer = %s.\n", eiter->a.manufacturer);

	/* Serial number. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_SERIAL_NUMBER);
	sn = ((ha->serial0 & 0x1f) << 16) | (ha->serial2 << 8) | ha->serial1;
	FUNC10(eiter->a.serial_num, "%c%05d", 'A' + sn / 100000, sn % 100000);
	alen = FUNC12(eiter->a.serial_num);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x2027,
	    "Serial no. = %s.\n", eiter->a.serial_num);

	/* Model name. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_MODEL);
	FUNC11(eiter->a.model, ha->model_number);
	alen = FUNC12(eiter->a.model);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x2028,
	    "Model Name = %s.\n", eiter->a.model);

	/* Model description. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_MODEL_DESCRIPTION);
	if (ha->model_desc)
		FUNC13(eiter->a.model_desc, ha->model_desc, 80);
	alen = FUNC12(eiter->a.model_desc);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x2029,
	    "Model Desc = %s.\n", eiter->a.model_desc);

	/* Hardware version. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_HARDWARE_VERSION);
	FUNC11(eiter->a.hw_version, ha->adapter_id);
	alen = FUNC12(eiter->a.hw_version);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x202a,
	    "Hardware ver = %s.\n", eiter->a.hw_version);

	/* Driver version. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_DRIVER_VERSION);
	FUNC11(eiter->a.driver_version, qla2x00_version_str);
	alen = FUNC12(eiter->a.driver_version);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x202b,
	    "Driver ver = %s.\n", eiter->a.driver_version);

	/* Option ROM version. */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_OPTION_ROM_VERSION);
	FUNC11(eiter->a.orom_version, "0.00");
	alen = FUNC12(eiter->a.orom_version);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha , 0x202c,
	    "Optrom vers = %s.\n", eiter->a.orom_version);

	/* Firmware version */
	eiter = (struct ct_fdmi_hba_attr *) (entries + size);
	eiter->type = FUNC0(FDMI_HBA_FIRMWARE_VERSION);
	ha->isp_ops->fw_version_str(vha, eiter->a.fw_version);
	alen = FUNC12(eiter->a.fw_version);
	alen += (alen & 3) ? (4 - (alen & 3)) : 4;
	eiter->len = FUNC2(4 + alen);
	size += 4 + alen;

	FUNC4(ql_dbg_disc, vha, 0x202d,
	    "Firmware vers = %s.\n", eiter->a.fw_version);

	/* Update MS request size. */
	FUNC9(vha, size + 16);

	FUNC4(ql_dbg_disc, vha, 0x202e,
	    "RHBA identifier = "
	    "%02x%02x%02x%02x%02x%02x%02x%02x size=%d.\n",
	    ct_req->req.rhba.hba_identifier[0],
	    ct_req->req.rhba.hba_identifier[1],
	    ct_req->req.rhba.hba_identifier[2],
	    ct_req->req.rhba.hba_identifier[3],
	    ct_req->req.rhba.hba_identifier[4],
	    ct_req->req.rhba.hba_identifier[5],
	    ct_req->req.rhba.hba_identifier[6],
	    ct_req->req.rhba.hba_identifier[7], size);
	FUNC5(ql_dbg_disc + ql_dbg_buffer, vha, 0x2076,
	    entries, size);

	/* Execute MS IOCB */
	rval = FUNC7(vha, ha->ms_iocb, ha->ms_iocb_dma,
	    sizeof(ms_iocb_entry_t));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC4(ql_dbg_disc, vha, 0x2030,
		    "RHBA issue IOCB failed (%d).\n", rval);
	} else if (FUNC6(vha, ms_pkt, ct_rsp, "RHBA") !=
	    QLA_SUCCESS) {
		rval = QLA_FUNCTION_FAILED;
		if (ct_rsp->header.reason_code == CT_REASON_CANNOT_PERFORM &&
		    ct_rsp->header.explanation_code ==
		    CT_EXPL_ALREADY_REGISTERED) {
			FUNC4(ql_dbg_disc, vha, 0x2034,
			    "HBA already registered.\n");
			rval = QLA_ALREADY_REGISTERED;
		}
	} else {
		FUNC4(ql_dbg_disc, vha, 0x2035,
		    "RHBA exiting normally.\n");
	}

	return rval;
}