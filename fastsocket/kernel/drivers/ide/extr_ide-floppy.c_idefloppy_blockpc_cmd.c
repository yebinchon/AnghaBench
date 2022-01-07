
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd; } ;
struct ide_disk_obj {int dummy; } ;
struct ide_atapi_pc {int flags; struct request* rq; int c; } ;


 int PC_FLAG_DMA_OK ;
 int PC_FLAG_WRITING ;
 scalar_t__ WRITE ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static void idefloppy_blockpc_cmd(struct ide_disk_obj *floppy,
  struct ide_atapi_pc *pc, struct request *rq)
{
 ide_init_pc(pc);
 memcpy(pc->c, rq->cmd, sizeof(pc->c));
 pc->rq = rq;
 if (blk_rq_bytes(rq)) {
  pc->flags |= PC_FLAG_DMA_OK;
  if (rq_data_dir(rq) == WRITE)
   pc->flags |= PC_FLAG_WRITING;
 }
}
