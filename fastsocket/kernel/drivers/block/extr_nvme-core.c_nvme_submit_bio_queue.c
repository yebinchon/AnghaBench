
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvme_queue {size_t sq_tail; size_t q_depth; int dev; int q_db; struct nvme_command* sq_cmds; } ;
struct nvme_ns {int lba_shift; int ns_id; int queue; } ;
struct nvme_iod {struct bio* private; } ;
struct TYPE_2__ {int command_id; void* dsmgmt; void* control; void* length; int slba; void* nsid; int opcode; } ;
struct nvme_command {TYPE_1__ rw; int common; } ;
struct bio {int bi_rw; int bi_sector; int bi_size; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BIO_DISCARD ;
 int BIO_RW_AHEAD ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NVME_IO_TIMEOUT ;
 int NVME_RW_DSM_FREQ_PREFETCH ;
 int NVME_RW_FUA ;
 int NVME_RW_LR ;
 int REQ_FAILFAST_DEV ;
 int REQ_FLUSH ;
 int REQ_FUA ;
 int alloc_cmdid (struct nvme_queue*,struct nvme_iod*,int ,int ) ;
 int bio_completion ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_phys_segments (int ,struct bio*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int free_cmdid (struct nvme_queue*,int,int *) ;
 int memset (struct nvme_command*,int ,int) ;
 struct nvme_iod* nvme_alloc_iod (int,int ,int ) ;
 int nvme_block_nr (struct nvme_ns*,int ) ;
 int nvme_cmd_read ;
 int nvme_cmd_write ;
 int nvme_free_iod (int ,struct nvme_iod*) ;
 int nvme_map_bio (struct nvme_queue*,struct nvme_iod*,struct bio*,int,int) ;
 int nvme_setup_prps (int ,int *,struct nvme_iod*,int,int ) ;
 int nvme_start_io_acct (struct bio*) ;
 int nvme_submit_discard (struct nvme_queue*,struct nvme_ns*,struct bio*,struct nvme_iod*,int) ;
 int nvme_submit_flush (struct nvme_queue*,struct nvme_ns*,int) ;
 int nvme_submit_flush_data (struct nvme_queue*,struct nvme_ns*) ;
 scalar_t__ unlikely (int) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int nvme_submit_bio_queue(struct nvme_queue *nvmeq, struct nvme_ns *ns,
        struct bio *bio)
{
 struct nvme_command *cmnd;
 struct nvme_iod *iod;
 enum dma_data_direction dma_dir;
 int cmdid, length, result;
 u16 control;
 u32 dsmgmt;
 int psegs = bio_phys_segments(ns->queue, bio);

 if ((bio->bi_rw & REQ_FLUSH) && psegs) {
  result = nvme_submit_flush_data(nvmeq, ns);
  if (result)
   return result;
 }

 result = -ENOMEM;
 iod = nvme_alloc_iod(psegs, bio->bi_size, GFP_ATOMIC);
 if (!iod)
  goto nomem;
 iod->private = bio;

 result = -EBUSY;
 cmdid = alloc_cmdid(nvmeq, iod, bio_completion, NVME_IO_TIMEOUT);
 if (unlikely(cmdid < 0))
  goto free_iod;

 if (bio->bi_rw & BIO_DISCARD) {
  result = nvme_submit_discard(nvmeq, ns, bio, iod, cmdid);
  if (result)
   goto free_cmdid;
  return result;
 }
 if ((bio->bi_rw & REQ_FLUSH) && !psegs)
  return nvme_submit_flush(nvmeq, ns, cmdid);

 control = 0;
 if (bio->bi_rw & REQ_FUA)
  control |= NVME_RW_FUA;
 if (bio->bi_rw & (REQ_FAILFAST_DEV | BIO_RW_AHEAD))
  control |= NVME_RW_LR;

 dsmgmt = 0;
 if (bio->bi_rw & BIO_RW_AHEAD)
  dsmgmt |= NVME_RW_DSM_FREQ_PREFETCH;

 cmnd = &nvmeq->sq_cmds[nvmeq->sq_tail];

 memset(cmnd, 0, sizeof(*cmnd));
 if (bio_data_dir(bio)) {
  cmnd->rw.opcode = nvme_cmd_write;
  dma_dir = DMA_TO_DEVICE;
 } else {
  cmnd->rw.opcode = nvme_cmd_read;
  dma_dir = DMA_FROM_DEVICE;
 }

 result = nvme_map_bio(nvmeq, iod, bio, dma_dir, psegs);
 if (result <= 0)
  goto free_cmdid;
 length = result;

 cmnd->rw.command_id = cmdid;
 cmnd->rw.nsid = cpu_to_le32(ns->ns_id);
 length = nvme_setup_prps(nvmeq->dev, &cmnd->common, iod, length,
        GFP_ATOMIC);
 cmnd->rw.slba = cpu_to_le64(nvme_block_nr(ns, bio->bi_sector));
 cmnd->rw.length = cpu_to_le16((length >> ns->lba_shift) - 1);
 cmnd->rw.control = cpu_to_le16(control);
 cmnd->rw.dsmgmt = cpu_to_le32(dsmgmt);

 nvme_start_io_acct(bio);
 if (++nvmeq->sq_tail == nvmeq->q_depth)
  nvmeq->sq_tail = 0;
 writel(nvmeq->sq_tail, nvmeq->q_db);

 return 0;

 free_cmdid:
 free_cmdid(nvmeq, cmdid, ((void*)0));
 free_iod:
 nvme_free_iod(nvmeq->dev, iod);
 nomem:
 return result;
}
