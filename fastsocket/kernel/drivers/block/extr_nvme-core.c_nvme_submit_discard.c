
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_queue {size_t sq_tail; size_t q_depth; int q_db; TYPE_1__* dev; struct nvme_command* sq_cmds; } ;
struct nvme_ns {int lba_shift; int ns_id; } ;
struct nvme_iod {int first_dma; scalar_t__ npages; } ;
struct nvme_dsm_range {void* slba; void* nlb; void* cattr; } ;
struct TYPE_4__ {int command_id; void* attributes; scalar_t__ nr; void* prp1; void* nsid; int opcode; } ;
struct nvme_command {TYPE_2__ dsm; } ;
struct bio {int bi_size; int bi_sector; } ;
typedef int __le64 ;
struct TYPE_3__ {int prp_small_pool; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int NVME_DSMGMT_AD ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 struct nvme_dsm_range* dma_pool_alloc (int ,int ,int *) ;
 int ** iod_list (struct nvme_iod*) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_block_nr (struct nvme_ns*,int ) ;
 int nvme_cmd_dsm ;
 int writel (size_t,int ) ;

__attribute__((used)) static int nvme_submit_discard(struct nvme_queue *nvmeq, struct nvme_ns *ns,
  struct bio *bio, struct nvme_iod *iod, int cmdid)
{
 struct nvme_dsm_range *range;
 struct nvme_command *cmnd = &nvmeq->sq_cmds[nvmeq->sq_tail];

 range = dma_pool_alloc(nvmeq->dev->prp_small_pool, GFP_ATOMIC,
       &iod->first_dma);
 if (!range)
  return -ENOMEM;

 iod_list(iod)[0] = (__le64 *)range;
 iod->npages = 0;

 range->cattr = cpu_to_le32(0);
 range->nlb = cpu_to_le32(bio->bi_size >> ns->lba_shift);
 range->slba = cpu_to_le64(nvme_block_nr(ns, bio->bi_sector));

 memset(cmnd, 0, sizeof(*cmnd));
 cmnd->dsm.opcode = nvme_cmd_dsm;
 cmnd->dsm.command_id = cmdid;
 cmnd->dsm.nsid = cpu_to_le32(ns->ns_id);
 cmnd->dsm.prp1 = cpu_to_le64(iod->first_dma);
 cmnd->dsm.nr = 0;
 cmnd->dsm.attributes = cpu_to_le32(NVME_DSMGMT_AD);

 if (++nvmeq->sq_tail == nvmeq->q_depth)
  nvmeq->sq_tail = 0;
 writel(nvmeq->sq_tail, nvmeq->q_db);

 return 0;
}
