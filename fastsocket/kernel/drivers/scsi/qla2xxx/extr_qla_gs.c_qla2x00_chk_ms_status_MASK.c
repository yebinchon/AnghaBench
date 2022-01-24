#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  response; } ;
struct ct_sns_rsp {TYPE_1__ header; } ;
struct ct_rsp_hdr {int dummy; } ;
struct ct_entry_24xx {int /*<<< orphan*/  comp_status; } ;
struct TYPE_11__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_12__ {TYPE_2__ b; } ;
struct TYPE_13__ {TYPE_3__ d_id; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {scalar_t__ entry_status; int /*<<< orphan*/  status; } ;
typedef  TYPE_5__ ms_iocb_entry_t ;

/* Variables and functions */
#define  CS_COMPLETE 130 
#define  CS_DATA_OVERRUN 129 
#define  CS_DATA_UNDERRUN 128 
 int /*<<< orphan*/  CT_ACCEPT_RESPONSE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_INVALID_COMMAND ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_4__*,int,char*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_4__*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(scsi_qla_host_t *vha, ms_iocb_entry_t *ms_pkt,
    struct ct_sns_rsp *ct_rsp, const char *routine)
{
	int rval;
	uint16_t comp_status;
	struct qla_hw_data *ha = vha->hw;

	rval = QLA_FUNCTION_FAILED;
	if (ms_pkt->entry_status != 0) {
		FUNC3(ql_dbg_disc, vha, 0x2031,
		    "%s failed, error status (%x) on port_id: %02x%02x%02x.\n",
		    routine, ms_pkt->entry_status, vha->d_id.b.domain,
		    vha->d_id.b.area, vha->d_id.b.al_pa);
	} else {
		if (FUNC0(ha))
			comp_status = FUNC2(
			    ((struct ct_entry_24xx *)ms_pkt)->comp_status);
		else
			comp_status = FUNC2(ms_pkt->status);
		switch (comp_status) {
		case CS_COMPLETE:
		case CS_DATA_UNDERRUN:
		case CS_DATA_OVERRUN:		/* Overrun? */
			if (ct_rsp->header.response !=
			    FUNC1(CT_ACCEPT_RESPONSE)) {
				FUNC3(ql_dbg_disc + ql_dbg_buffer, vha, 0x2077,
				    "%s failed rejected request on port_id: "
				    "%02x%02x%02x.\n", routine,
				    vha->d_id.b.domain, vha->d_id.b.area,
				    vha->d_id.b.al_pa);
				FUNC4(ql_dbg_disc + ql_dbg_buffer, vha,
				    0x2078, (uint8_t *)&ct_rsp->header,
				    sizeof(struct ct_rsp_hdr));
				rval = QLA_INVALID_COMMAND;
			} else
				rval = QLA_SUCCESS;
			break;
		default:
			FUNC3(ql_dbg_disc, vha, 0x2033,
			    "%s failed, completion status (%x) on port_id: "
			    "%02x%02x%02x.\n", routine, comp_status,
			    vha->d_id.b.domain, vha->d_id.b.area,
			    vha->d_id.b.al_pa);
			break;
		}
	}
	return rval;
}