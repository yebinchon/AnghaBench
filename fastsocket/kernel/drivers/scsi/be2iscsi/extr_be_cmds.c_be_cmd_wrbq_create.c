
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_wrbq_create_resp {int cid; } ;
struct be_wrbq_create_req {int pages; int num_pages; int hdr; } ;
struct be_queue_info {int created; int id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int va; } ;
struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;


 int ARRAY_SIZE (int ) ;
 int CMD_SUBSYSTEM_ISCSI ;
 int OPCODE_COMMON_ISCSI_WRBQ_CREATE ;
 int PAGES_4K_SPANNED (int ,int ) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_cmd_page_addrs_prepare (int ,int ,struct be_dma_mem*) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le16_to_cpu (int ) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int be_cmd_wrbq_create(struct be_ctrl_info *ctrl, struct be_dma_mem *q_mem,
         struct be_queue_info *wrbq)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_wrbq_create_req *req = embedded_payload(wrb);
 struct be_wrbq_create_resp *resp = embedded_payload(wrb);
 int status;

 spin_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);

 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
  OPCODE_COMMON_ISCSI_WRBQ_CREATE, sizeof(*req));
 req->num_pages = PAGES_4K_SPANNED(q_mem->va, q_mem->size);
 be_cmd_page_addrs_prepare(req->pages, ARRAY_SIZE(req->pages), q_mem);

 status = be_mbox_notify(ctrl);
 if (!status) {
  wrbq->id = le16_to_cpu(resp->cid);
  wrbq->created = 1;
 }
 spin_unlock(&ctrl->mbox_lock);
 return status;
}
