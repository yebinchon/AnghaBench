
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iscsi_bsg_request {int msgcode; } ;
struct iscsi_bsg_reply {unsigned short result; int reply_payload_rcv_len; } ;
struct TYPE_6__ {int sg_cnt; int sg_list; } ;
struct TYPE_5__ {int payload_len; } ;
struct bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; struct iscsi_bsg_reply* reply; struct iscsi_bsg_request* request; } ;
struct TYPE_7__ {int* mcc_numtag; int pdev; int * mcc_wait; } ;
struct beiscsi_hba {TYPE_3__ ctrl; } ;
struct be_dma_mem {int dma; int * va; int size; } ;
struct be_cmd_resp_hdr {int response_length; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_HOST_MBX_TIMEOUT ;
 int BEISCSI_LOG_CONFIG ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;

 int KERN_ERR ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int bsg_job_done (struct bsg_job*,unsigned short,int ) ;
 int free_mcc_tag (TYPE_3__*,unsigned int) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_job_to_shost (struct bsg_job*) ;
 unsigned int mgmt_vendor_specific_fw_cmd (TYPE_3__*,struct beiscsi_hba*,struct bsg_job*,struct be_dma_mem*) ;
 int msecs_to_jiffies (int ) ;
 int * pci_alloc_consistent (int ,int ,int *) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int beiscsi_bsg_request(struct bsg_job *job)
{
 struct Scsi_Host *shost;
 struct beiscsi_hba *phba;
 struct iscsi_bsg_request *bsg_req = job->request;
 int rc = -EINVAL;
 unsigned int tag;
 struct be_dma_mem nonemb_cmd;
 struct be_cmd_resp_hdr *resp;
 struct iscsi_bsg_reply *bsg_reply = job->reply;
 unsigned short status, extd_status;

 shost = iscsi_job_to_shost(job);
 phba = iscsi_host_priv(shost);

 switch (bsg_req->msgcode) {
 case 128:
  nonemb_cmd.va = pci_alloc_consistent(phba->ctrl.pdev,
     job->request_payload.payload_len,
     &nonemb_cmd.dma);
  if (nonemb_cmd.va == ((void*)0)) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : Failed to allocate memory for "
        "beiscsi_bsg_request\n");
   return -ENOMEM;
  }
  tag = mgmt_vendor_specific_fw_cmd(&phba->ctrl, phba, job,
        &nonemb_cmd);
  if (!tag) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : MBX Tag Allocation Failed\n");

   pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
         nonemb_cmd.va, nonemb_cmd.dma);
   return -EAGAIN;
  }

  rc = wait_event_interruptible_timeout(
     phba->ctrl.mcc_wait[tag],
     phba->ctrl.mcc_numtag[tag],
     msecs_to_jiffies(
     BEISCSI_HOST_MBX_TIMEOUT));
  extd_status = (phba->ctrl.mcc_numtag[tag] & 0x0000FF00) >> 8;
  status = phba->ctrl.mcc_numtag[tag] & 0x000000FF;
  free_mcc_tag(&phba->ctrl, tag);
  resp = (struct be_cmd_resp_hdr *)nonemb_cmd.va;
  sg_copy_from_buffer(job->reply_payload.sg_list,
        job->reply_payload.sg_cnt,
        nonemb_cmd.va, (resp->response_length
        + sizeof(*resp)));
  bsg_reply->reply_payload_rcv_len = resp->response_length;
  bsg_reply->result = status;
  bsg_job_done(job, bsg_reply->result,
        bsg_reply->reply_payload_rcv_len);
  pci_free_consistent(phba->ctrl.pdev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
  if (status || extd_status) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : MBX Cmd Failed"
        " status = %d extd_status = %d\n",
        status, extd_status);

   return -EIO;
  } else {
   rc = 0;
  }
  break;

 default:
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
    "BM_%d : Unsupported bsg command: 0x%x\n",
    bsg_req->msgcode);
  break;
 }

 return rc;
}
