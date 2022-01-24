#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  (* exch_seq_send ) (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fc_bsg_info*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_3__ tt; int /*<<< orphan*/  port_id; } ;
struct fc_frame_header {scalar_t__ fh_parm_offset; scalar_t__ fh_df_ctl; scalar_t__ fh_cs_ctl; int /*<<< orphan*/  fh_f_ctl; int /*<<< orphan*/  fh_type; int /*<<< orphan*/  fh_s_id; int /*<<< orphan*/  fh_d_id; int /*<<< orphan*/  fh_r_ctl; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_req {int dummy; } ;
struct fc_ct_hdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sg_list; int /*<<< orphan*/  sg_cnt; } ;
struct TYPE_4__ {int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; } ;
struct fc_bsg_info {int /*<<< orphan*/  sg; int /*<<< orphan*/  nents; int /*<<< orphan*/  rsp_code; struct fc_lport* lport; struct fc_bsg_job* job; } ;

/* Variables and functions */
 int ECOMM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FC_FCTL_REQ ; 
 int /*<<< orphan*/  FC_FS_ACC ; 
 int /*<<< orphan*/  FC_RCTL_DD_UNSOL_CTL ; 
 int /*<<< orphan*/  FC_TYPE_CT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fc_frame* FUNC0 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC2 (struct fc_frame*) ; 
 struct fc_ct_req* FUNC3 (struct fc_frame*,size_t) ; 
 int /*<<< orphan*/  fc_lport_bsg_resp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_bsg_info*) ; 
 struct fc_bsg_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_ct_req*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fc_bsg_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fc_bsg_job *job,
			       struct fc_lport *lport, u32 did, u32 tov)
{
	struct fc_bsg_info *info;
	struct fc_frame *fp;
	struct fc_frame_header *fh;
	struct fc_ct_req *ct;
	size_t len;

	fp = FUNC0(lport, sizeof(struct fc_ct_hdr) +
			    job->request_payload.payload_len);
	if (!fp)
		return -ENOMEM;

	len = job->request_payload.payload_len;
	ct = FUNC3(fp, len);

	FUNC7(job->request_payload.sg_list,
			  job->request_payload.sg_cnt,
			  ct, len);

	fh = FUNC2(fp);
	fh->fh_r_ctl = FC_RCTL_DD_UNSOL_CTL;
	FUNC4(fh->fh_d_id, did);
	FUNC4(fh->fh_s_id, lport->port_id);
	fh->fh_type = FC_TYPE_CT;
	FUNC4(fh->fh_f_ctl, FC_FCTL_REQ);
	fh->fh_cs_ctl = 0;
	fh->fh_df_ctl = 0;
	fh->fh_parm_offset = 0;

	info = FUNC6(sizeof(struct fc_bsg_info), GFP_KERNEL);
	if (!info) {
		FUNC1(fp);
		return -ENOMEM;
	}

	info->job = job;
	info->lport = lport;
	info->rsp_code = FC_FS_ACC;
	info->nents = job->reply_payload.sg_cnt;
	info->sg = job->reply_payload.sg_list;

	if (!lport->tt.exch_seq_send(lport, fp, fc_lport_bsg_resp,
				     NULL, info, tov)) {
		FUNC5(info);
		return -ECOMM;
	}
	return 0;
}