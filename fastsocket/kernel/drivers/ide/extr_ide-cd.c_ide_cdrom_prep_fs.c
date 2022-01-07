
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {long* cmd; int cmd_len; } ;


 int BLKPREP_OK ;
 int BLK_MAX_CDB ;
 long GPCMD_READ_10 ;
 long GPCMD_WRITE_10 ;
 scalar_t__ READ ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int memset (long*,int ,int ) ;
 int queue_logical_block_size (struct request_queue*) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static int ide_cdrom_prep_fs(struct request_queue *q, struct request *rq)
{
 int hard_sect = queue_logical_block_size(q);
 long block = (long)blk_rq_pos(rq) / (hard_sect >> 9);
 unsigned long blocks = blk_rq_sectors(rq) / (hard_sect >> 9);

 memset(rq->cmd, 0, BLK_MAX_CDB);

 if (rq_data_dir(rq) == READ)
  rq->cmd[0] = GPCMD_READ_10;
 else
  rq->cmd[0] = GPCMD_WRITE_10;




 rq->cmd[2] = (block >> 24) & 0xff;
 rq->cmd[3] = (block >> 16) & 0xff;
 rq->cmd[4] = (block >> 8) & 0xff;
 rq->cmd[5] = block & 0xff;




 rq->cmd[7] = (blocks >> 8) & 0xff;
 rq->cmd[8] = blocks & 0xff;
 rq->cmd_len = 10;
 return BLKPREP_OK;
}
