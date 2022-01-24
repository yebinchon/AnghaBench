#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct scsi_cmnd {scalar_t__ underflow; int /*<<< orphan*/  sense_buffer; int /*<<< orphan*/  result; } ;
struct TYPE_4__ {int fr_flags; int /*<<< orphan*/  fr_status; } ;
struct TYPE_3__ {scalar_t__ fr_resid; int /*<<< orphan*/  fr_sns_len; } ;
struct fcp_resp_with_ext {TYPE_2__ resp; TYPE_1__ ext; } ;
struct fcp_resp_rsp_info {scalar_t__ rsp_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_COMPLETE ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_OK ; 
 int FCP_RESID_UNDER ; 
 int FCP_RSP_LEN_VAL ; 
 int FCP_SNS_LEN_VAL ; 
 scalar_t__ FCP_TMF_CMPL ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 scalar_t__ SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline
void FUNC7(struct fcp_resp_with_ext *fcp_rsp,
			  struct scsi_cmnd *scsi)
{
	struct fcp_resp_rsp_info *rsp_info;
	char *sense;
	u32 sense_len, resid;
	u8 rsp_flags;

	FUNC5(scsi, COMMAND_COMPLETE);
	scsi->result |= fcp_rsp->resp.fr_status;

	rsp_flags = fcp_rsp->resp.fr_flags;

	if (FUNC6(rsp_flags & FCP_RSP_LEN_VAL)) {
		rsp_info = (struct fcp_resp_rsp_info *) &fcp_rsp[1];
		if (rsp_info->rsp_code == FCP_TMF_CMPL)
			FUNC4(scsi, DID_OK);
		else {
			FUNC4(scsi, DID_ERROR);
			return;
		}
	}

	if (FUNC6(rsp_flags & FCP_SNS_LEN_VAL)) {
		sense = (char *) &fcp_rsp[1];
		if (rsp_flags & FCP_RSP_LEN_VAL)
			sense += fcp_rsp->ext.fr_sns_len;
		sense_len = FUNC1(fcp_rsp->ext.fr_sns_len,
				(u32) SCSI_SENSE_BUFFERSIZE);
		FUNC0(scsi->sense_buffer, sense, sense_len);
	}

	if (FUNC6(rsp_flags & FCP_RESID_UNDER)) {
		resid = fcp_rsp->ext.fr_resid;
		FUNC3(scsi, resid);
		if (FUNC2(scsi) - resid < scsi->underflow &&
		     !(rsp_flags & FCP_SNS_LEN_VAL) &&
		     fcp_rsp->resp.fr_status == SAM_STAT_GOOD)
			FUNC4(scsi, DID_ERROR);
	}
}