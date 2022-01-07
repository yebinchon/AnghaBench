
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_queue {int q_depth; int cq_vector; int cq_dma_addr; } ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* irq_vector; void* cq_flags; void* qsize; void* cqid; int prp1; int opcode; } ;
struct nvme_command {TYPE_1__ create_cq; } ;
typedef int c ;


 int EIO ;
 int NVME_CQ_IRQ_ENABLED ;
 int NVME_QUEUE_PHYS_CONTIG ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_create_cq ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;

__attribute__((used)) static int adapter_alloc_cq(struct nvme_dev *dev, u16 qid,
      struct nvme_queue *nvmeq)
{
 int status;
 struct nvme_command c;
 int flags = NVME_QUEUE_PHYS_CONTIG | NVME_CQ_IRQ_ENABLED;

 memset(&c, 0, sizeof(c));
 c.create_cq.opcode = nvme_admin_create_cq;
 c.create_cq.prp1 = cpu_to_le64(nvmeq->cq_dma_addr);
 c.create_cq.cqid = cpu_to_le16(qid);
 c.create_cq.qsize = cpu_to_le16(nvmeq->q_depth - 1);
 c.create_cq.cq_flags = cpu_to_le16(flags);
 c.create_cq.irq_vector = cpu_to_le16(nvmeq->cq_vector);

 status = nvme_submit_admin_cmd(dev, &c, ((void*)0));
 if (status)
  return -EIO;
 return 0;
}
