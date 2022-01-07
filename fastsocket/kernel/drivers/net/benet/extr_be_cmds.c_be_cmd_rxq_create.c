
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct be_dma_mem {int dummy; } ;
struct be_queue_info {int created; int id; struct be_dma_mem dma_mem; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_eth_rx_create {int rss_id; int id; } ;
struct be_cmd_req_eth_rx_create {int num_pages; void* rss_queue; void* max_frame_size; void* interface_id; int pages; scalar_t__ frag_size; void* cq_id; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int ARRAY_SIZE (int ) ;
 int BE_MAX_JUMBO_FRAME_SIZE ;
 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int OPCODE_ETH_RX_CREATE ;
 int be_cmd_page_addrs_prepare (int ,int ,struct be_dma_mem*) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ fls (int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_rxq_create(struct be_adapter *adapter,
  struct be_queue_info *rxq, u16 cq_id, u16 frag_size,
  u32 if_id, u32 rss, u8 *rss_id)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_eth_rx_create *req;
 struct be_dma_mem *q_mem = &rxq->dma_mem;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
    OPCODE_ETH_RX_CREATE, sizeof(*req), wrb, ((void*)0));

 req->cq_id = cpu_to_le16(cq_id);
 req->frag_size = fls(frag_size) - 1;
 req->num_pages = 2;
 be_cmd_page_addrs_prepare(req->pages, ARRAY_SIZE(req->pages), q_mem);
 req->interface_id = cpu_to_le32(if_id);
 req->max_frame_size = cpu_to_le16(BE_MAX_JUMBO_FRAME_SIZE);
 req->rss_queue = cpu_to_le32(rss);

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_eth_rx_create *resp = embedded_payload(wrb);
  rxq->id = le16_to_cpu(resp->id);
  rxq->created = 1;
  *rss_id = resp->rss_id;
 }

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
