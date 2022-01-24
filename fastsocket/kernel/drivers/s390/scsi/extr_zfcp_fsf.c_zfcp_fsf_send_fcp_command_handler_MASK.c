#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct zfcp_unit {TYPE_7__* port; scalar_t__ fcp_lun; } ;
struct zfcp_fsf_req {int status; struct zfcp_unit* unit; TYPE_5__* qtcb; TYPE_2__* adapter; struct zfcp_unit* data; } ;
struct TYPE_15__ {int /*<<< orphan*/ * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_6__ fsf_status_qual; } ;
struct TYPE_16__ {int /*<<< orphan*/  adapter; scalar_t__ wwpn; } ;
struct TYPE_12__ {int /*<<< orphan*/  fcp_cmnd_length; int /*<<< orphan*/  data_direction; } ;
struct TYPE_13__ {TYPE_3__ io; } ;
struct TYPE_14__ {TYPE_4__ bottom; struct fsf_qtcb_header header; } ;
struct TYPE_11__ {TYPE_1__* ccw_device; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  FSF_ACCESS_DENIED 138 
#define  FSF_ADAPTER_STATUS_AVAILABLE 137 
#define  FSF_CMND_LENGTH_NOT_VALID 136 
#define  FSF_DIRECTION_INDICATOR_NOT_VALID 135 
#define  FSF_FCPLUN_NOT_VALID 134 
#define  FSF_HANDLE_MISMATCH 133 
#define  FSF_LUN_BOXED 132 
#define  FSF_LUN_HANDLE_NOT_VALID 131 
#define  FSF_PORT_BOXED 130 
#define  FSF_PORT_HANDLE_NOT_VALID 129 
#define  FSF_SERVICE_CLASS_NOT_SUPPORTED 128 
 int /*<<< orphan*/  FSF_SQ_INVOKE_LINK_TEST_PROCEDURE ; 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_unit*,char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*,struct zfcp_unit*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_unit*) ; 

__attribute__((used)) static void FUNC13(struct zfcp_fsf_req *req)
{
	struct zfcp_unit *unit;
	struct fsf_qtcb_header *header = &req->qtcb->header;

	if (FUNC1(req->status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT))
		unit = req->data;
	else
		unit = req->unit;

	if (FUNC1(req->status & ZFCP_STATUS_FSFREQ_ERROR))
		goto skip_fsfstatus;

	switch (header->fsf_status) {
	case FSF_HANDLE_MISMATCH:
	case FSF_PORT_HANDLE_NOT_VALID:
		FUNC2(unit->port->adapter, 0, "fssfch1", req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_FCPLUN_NOT_VALID:
	case FSF_LUN_HANDLE_NOT_VALID:
		FUNC5(unit->port, 0, "fssfch2", req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_SERVICE_CLASS_NOT_SUPPORTED:
		FUNC9(req);
		break;
	case FSF_ACCESS_DENIED:
		FUNC8(req, unit);
		break;
	case FSF_DIRECTION_INDICATOR_NOT_VALID:
		FUNC0(&req->adapter->ccw_device->dev,
			"Incorrect direction %d, unit 0x%016Lx on port "
			"0x%016Lx closed\n",
			req->qtcb->bottom.io.data_direction,
			(unsigned long long)unit->fcp_lun,
			(unsigned long long)unit->port->wwpn);
		FUNC3(unit->port->adapter, 0, "fssfch3",
					  req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_CMND_LENGTH_NOT_VALID:
		FUNC0(&req->adapter->ccw_device->dev,
			"Incorrect CDB length %d, unit 0x%016Lx on "
			"port 0x%016Lx closed\n",
			req->qtcb->bottom.io.fcp_cmnd_length,
			(unsigned long long)unit->fcp_lun,
			(unsigned long long)unit->port->wwpn);
		FUNC3(unit->port->adapter, 0, "fssfch4",
					  req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_PORT_BOXED:
		FUNC4(unit->port, "fssfch5", req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_LUN_BOXED:
		FUNC6(unit, "fssfch6", req);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_ADAPTER_STATUS_AVAILABLE:
		if (header->fsf_status_qual.word[0] ==
		    FSF_SQ_INVOKE_LINK_TEST_PROCEDURE)
			FUNC7(unit->port);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	}
skip_fsfstatus:
	if (req->status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT)
		FUNC11(req);
	else {
		FUNC10(req);
		req->unit = NULL;
		FUNC12(unit);
	}
}