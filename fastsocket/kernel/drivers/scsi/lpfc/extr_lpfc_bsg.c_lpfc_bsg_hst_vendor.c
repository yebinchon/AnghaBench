
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fc_bsg_job {TYPE_1__* reply; TYPE_3__* request; } ;
struct TYPE_6__ {int* vendor_cmd; } ;
struct TYPE_8__ {TYPE_2__ h_vendor; } ;
struct TYPE_7__ {TYPE_4__ rqst_data; } ;
struct TYPE_5__ {int result; int reply_payload_rcv_len; } ;


 int EINVAL ;
 int lpfc_bsg_diag_loopback_mode (struct fc_bsg_job*) ;
 int lpfc_bsg_diag_loopback_run (struct fc_bsg_job*) ;
 int lpfc_bsg_get_dfc_rev (struct fc_bsg_job*) ;
 int lpfc_bsg_hba_get_event (struct fc_bsg_job*) ;
 int lpfc_bsg_hba_set_event (struct fc_bsg_job*) ;
 int lpfc_bsg_mbox_cmd (struct fc_bsg_job*) ;
 int lpfc_bsg_send_mgmt_rsp (struct fc_bsg_job*) ;
 int lpfc_menlo_cmd (struct fc_bsg_job*) ;
 int lpfc_sli4_bsg_diag_mode_end (struct fc_bsg_job*) ;
 int lpfc_sli4_bsg_link_diag_test (struct fc_bsg_job*) ;

__attribute__((used)) static int
lpfc_bsg_hst_vendor(struct fc_bsg_job *job)
{
 int command = job->request->rqst_data.h_vendor.vendor_cmd[0];
 int rc;

 switch (command) {
 case 128:
  rc = lpfc_bsg_hba_set_event(job);
  break;
 case 135:
  rc = lpfc_bsg_hba_get_event(job);
  break;
 case 129:
  rc = lpfc_bsg_send_mgmt_rsp(job);
  break;
 case 138:
  rc = lpfc_bsg_diag_loopback_mode(job);
  break;
 case 137:
  rc = lpfc_sli4_bsg_diag_mode_end(job);
  break;
 case 136:
  rc = lpfc_bsg_diag_loopback_run(job);
  break;
 case 133:
  rc = lpfc_sli4_bsg_link_diag_test(job);
  break;
 case 134:
  rc = lpfc_bsg_get_dfc_rev(job);
  break;
 case 132:
  rc = lpfc_bsg_mbox_cmd(job);
  break;
 case 131:
 case 130:
  rc = lpfc_menlo_cmd(job);
  break;
 default:
  rc = -EINVAL;
  job->reply->reply_payload_rcv_len = 0;

  job->reply->result = rc;
  break;
 }

 return rc;
}
