
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct request {int resid_len; int * cmd; int bio; } ;
struct ide_atapi_pc {int flags; scalar_t__* c; scalar_t__ retries; void* error; } ;
struct TYPE_6__ {int sense_key; int asc; int ascq; int blk_size; } ;
typedef TYPE_2__ idetape_tape_t ;
struct TYPE_7__ {TYPE_1__* hwif; struct ide_atapi_pc* failed_pc; TYPE_2__* driver_data; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_5__ {struct request* rq; } ;


 scalar_t__ IDETAPE_MAX_PC_RETRIES ;
 int IDE_DBG_FUNC ;
 void* IDE_DRV_ERROR_EOD ;
 void* IDE_DRV_ERROR_FILEMARK ;
 int PC_FLAG_ABORT ;
 int PC_FLAG_DMA_ERROR ;
 scalar_t__ READ_6 ;
 scalar_t__ WRITE_6 ;
 int* bio_data (int ) ;
 int blk_rq_bytes (struct request*) ;
 int get_unaligned_be32 (int*) ;
 int ide_debug_log (int ,char*,int ,int,int,int) ;

__attribute__((used)) static void idetape_analyze_error(ide_drive_t *drive)
{
 idetape_tape_t *tape = drive->driver_data;
 struct ide_atapi_pc *pc = drive->failed_pc;
 struct request *rq = drive->hwif->rq;
 u8 *sense = bio_data(rq->bio);

 tape->sense_key = sense[2] & 0xF;
 tape->asc = sense[12];
 tape->ascq = sense[13];

 ide_debug_log(IDE_DBG_FUNC,
        "cmd: 0x%x, sense key = %x, asc = %x, ascq = %x",
        rq->cmd[0], tape->sense_key, tape->asc, tape->ascq);


 if (pc->flags & PC_FLAG_DMA_ERROR)
  rq->resid_len = tape->blk_size * get_unaligned_be32(&sense[3]);






 if ((pc->c[0] == READ_6 || pc->c[0] == WRITE_6)

     && pc->c[4] == 0 && pc->c[3] == 0 && pc->c[2] == 0) {
  if (tape->sense_key == 5) {

   pc->error = 0;

   pc->flags |= PC_FLAG_ABORT;
  }
 }
 if (pc->c[0] == READ_6 && (sense[2] & 0x80)) {
  pc->error = IDE_DRV_ERROR_FILEMARK;
  pc->flags |= PC_FLAG_ABORT;
 }
 if (pc->c[0] == WRITE_6) {
  if ((sense[2] & 0x40) || (tape->sense_key == 0xd
       && tape->asc == 0x0 && tape->ascq == 0x2)) {
   pc->error = IDE_DRV_ERROR_EOD;
   pc->flags |= PC_FLAG_ABORT;
  }
 }
 if (pc->c[0] == READ_6 || pc->c[0] == WRITE_6) {
  if (tape->sense_key == 8) {
   pc->error = IDE_DRV_ERROR_EOD;
   pc->flags |= PC_FLAG_ABORT;
  }
  if (!(pc->flags & PC_FLAG_ABORT) &&
      (blk_rq_bytes(rq) - rq->resid_len))
   pc->retries = IDETAPE_MAX_PC_RETRIES + 1;
 }
}
