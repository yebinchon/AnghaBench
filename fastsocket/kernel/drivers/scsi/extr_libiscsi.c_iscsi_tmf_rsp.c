
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tm_rsp {scalar_t__ response; } ;
struct iscsi_hdr {int statsn; } ;
struct iscsi_conn {scalar_t__ tmf_state; int ehwait; int tmfrsp_pdus_cnt; scalar_t__ exp_statsn; } ;


 scalar_t__ ISCSI_TMF_RSP_COMPLETE ;
 scalar_t__ ISCSI_TMF_RSP_NO_TASK ;
 scalar_t__ TMF_FAILED ;
 scalar_t__ TMF_NOT_FOUND ;
 scalar_t__ TMF_QUEUED ;
 scalar_t__ TMF_SUCCESS ;
 scalar_t__ be32_to_cpu (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void iscsi_tmf_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
{
 struct iscsi_tm_rsp *tmf = (struct iscsi_tm_rsp *)hdr;

 conn->exp_statsn = be32_to_cpu(hdr->statsn) + 1;
 conn->tmfrsp_pdus_cnt++;

 if (conn->tmf_state != TMF_QUEUED)
  return;

 if (tmf->response == ISCSI_TMF_RSP_COMPLETE)
  conn->tmf_state = TMF_SUCCESS;
 else if (tmf->response == ISCSI_TMF_RSP_NO_TASK)
  conn->tmf_state = TMF_NOT_FOUND;
 else
  conn->tmf_state = TMF_FAILED;
 wake_up(&conn->ehwait);
}
