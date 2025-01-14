
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct scatterlist {int dummy; } ;
struct request_queue {struct carm_port* queuedata; } ;
struct request {int dummy; } ;
struct carm_request {int n_elem; int msg_bucket; int tag; struct scatterlist* sg; void* msg_type; struct carm_port* port; struct request* rq; } ;
struct carm_port {int port_no; struct carm_host* host; } ;
struct carm_msg_sg {void* len; void* start; } ;
struct carm_msg_rw {int sg_count; struct carm_msg_sg* sg; void* lba_count; void* lba_high; void* lba; void* handle; int sg_type; int id; void* type; } ;
struct carm_host {int hw_sg_used; int pdev; } ;


 int BUG_ON (int) ;
 void* CARM_MSG_READ ;
 void* CARM_MSG_WRITE ;
 int EIO ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int SGT_32BIT ;
 int TAG_ENCODE (int ) ;
 int VPRINTK (char*,...) ;
 scalar_t__ WRITE ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_requeue_request (struct request_queue*,struct request*) ;
 int blk_rq_map_sg (struct request_queue*,struct request*,struct scatterlist*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int blk_start_request (struct request*) ;
 int carm_end_rq (struct carm_host*,struct carm_request*,int ) ;
 struct carm_request* carm_get_request (struct carm_host*) ;
 int carm_lookup_bucket (unsigned int) ;
 int carm_push_q (struct carm_host*,struct request_queue*) ;
 int carm_put_request (struct carm_host*,struct carm_request*) ;
 scalar_t__ carm_ref_msg (struct carm_host*,int ) ;
 int carm_send_msg (struct carm_host*,struct carm_request*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int pci_map_sg (int ,struct scatterlist*,int,int) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void carm_rq_fn(struct request_queue *q)
{
 struct carm_port *port = q->queuedata;
 struct carm_host *host = port->host;
 struct carm_msg_rw *msg;
 struct carm_request *crq;
 struct request *rq;
 struct scatterlist *sg;
 int writing = 0, pci_dir, i, n_elem, rc;
 u32 tmp;
 unsigned int msg_size;

queue_one_request:
 VPRINTK("get req\n");
 rq = blk_peek_request(q);
 if (!rq)
  return;

 crq = carm_get_request(host);
 if (!crq) {
  carm_push_q(host, q);
  return;
 }
 crq->rq = rq;

 blk_start_request(rq);

 if (rq_data_dir(rq) == WRITE) {
  writing = 1;
  pci_dir = PCI_DMA_TODEVICE;
 } else {
  pci_dir = PCI_DMA_FROMDEVICE;
 }


 sg = &crq->sg[0];
 n_elem = blk_rq_map_sg(q, rq, sg);
 if (n_elem <= 0) {
  carm_end_rq(host, crq, -EIO);
  return;
 }


 n_elem = pci_map_sg(host->pdev, sg, n_elem, pci_dir);
 if (n_elem <= 0) {
  carm_end_rq(host, crq, -EIO);
  return;
 }
 crq->n_elem = n_elem;
 crq->port = port;
 host->hw_sg_used += n_elem;





 VPRINTK("build msg\n");
 msg = (struct carm_msg_rw *) carm_ref_msg(host, crq->tag);

 if (writing) {
  msg->type = CARM_MSG_WRITE;
  crq->msg_type = CARM_MSG_WRITE;
 } else {
  msg->type = CARM_MSG_READ;
  crq->msg_type = CARM_MSG_READ;
 }

 msg->id = port->port_no;
 msg->sg_count = n_elem;
 msg->sg_type = SGT_32BIT;
 msg->handle = cpu_to_le32(TAG_ENCODE(crq->tag));
 msg->lba = cpu_to_le32(blk_rq_pos(rq) & 0xffffffff);
 tmp = (blk_rq_pos(rq) >> 16) >> 16;
 msg->lba_high = cpu_to_le16( (u16) tmp );
 msg->lba_count = cpu_to_le16(blk_rq_sectors(rq));

 msg_size = sizeof(struct carm_msg_rw) - sizeof(msg->sg);
 for (i = 0; i < n_elem; i++) {
  struct carm_msg_sg *carm_sg = &msg->sg[i];
  carm_sg->start = cpu_to_le32(sg_dma_address(&crq->sg[i]));
  carm_sg->len = cpu_to_le32(sg_dma_len(&crq->sg[i]));
  msg_size += sizeof(struct carm_msg_sg);
 }

 rc = carm_lookup_bucket(msg_size);
 BUG_ON(rc < 0);
 crq->msg_bucket = (u32) rc;





 VPRINTK("send msg, tag == %u\n", crq->tag);
 rc = carm_send_msg(host, crq);
 if (rc) {
  carm_put_request(host, crq);
  blk_requeue_request(q, rq);
  carm_push_q(host, q);
  return;
 }

 goto queue_one_request;
}
