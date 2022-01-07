
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int* cmd; scalar_t__ errors; scalar_t__ resid_len; int __sector; int rq_disk; int cmd_type; } ;
struct TYPE_4__ {int blk_size; int valid; int buf; int cur; int disk; int first_frame; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_5__ {int queue; TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int BUG_ON (int) ;
 int EIO ;
 int IDE_DBG_FUNC ;
 scalar_t__ IDE_DRV_ERROR_GENERAL ;
 int READ ;
 int REQ_IDETAPE_READ ;
 int REQ_IDETAPE_WRITE ;
 int REQ_TYPE_SPECIAL ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,int ,int,int ) ;
 int ide_debug_log (int ,char*,int,int) ;

__attribute__((used)) static int idetape_queue_rw_tail(ide_drive_t *drive, int cmd, int size)
{
 idetape_tape_t *tape = drive->driver_data;
 struct request *rq;
 int ret;

 ide_debug_log(IDE_DBG_FUNC, "cmd: 0x%x, size: %d", cmd, size);

 BUG_ON(cmd != REQ_IDETAPE_READ && cmd != REQ_IDETAPE_WRITE);
 BUG_ON(size < 0 || size % tape->blk_size);

 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->cmd[13] = cmd;
 rq->rq_disk = tape->disk;
 rq->__sector = tape->first_frame;

 if (size) {
  ret = blk_rq_map_kern(drive->queue, rq, tape->buf, size,
          __GFP_WAIT);
  if (ret)
   goto out_put;
 }

 blk_execute_rq(drive->queue, tape->disk, rq, 0);


 size -= rq->resid_len;
 tape->cur = tape->buf;
 if (cmd == REQ_IDETAPE_READ)
  tape->valid = size;
 else
  tape->valid = 0;

 ret = size;
 if (rq->errors == IDE_DRV_ERROR_GENERAL)
  ret = -EIO;
out_put:
 blk_put_request(rq);
 return ret;
}
