
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_sense {scalar_t__ sense_key; int asc; int ascq; } ;
struct request {unsigned int cmd_flags; int timeout; unsigned int resid_len; struct request_sense* sense; int cmd_type; int cmd; } ;
struct cdrom_info {int disk; } ;
struct TYPE_4__ {int queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int BLK_MAX_CDB ;
 int EIO ;
 int GFP_NOIO ;
 int IDE_DBG_PC ;
 scalar_t__ NOT_READY ;
 unsigned int REQ_FAILED ;
 int REQ_TYPE_ATA_PC ;
 scalar_t__ UNIT_ATTENTION ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (int ,int,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 int cdrom_saw_media_change (TYPE_1__*) ;
 int ide_debug_log (int ,char*,unsigned char const,int,int,unsigned int) ;
 int memcpy (int ,unsigned char const*,int ) ;
 int ssleep (int) ;

int ide_cd_queue_pc(ide_drive_t *drive, const unsigned char *cmd,
      int write, void *buffer, unsigned *bufflen,
      struct request_sense *sense, int timeout,
      unsigned int cmd_flags)
{
 struct cdrom_info *info = drive->driver_data;
 struct request_sense local_sense;
 int retries = 10;
 unsigned int flags = 0;

 if (!sense)
  sense = &local_sense;

 ide_debug_log(IDE_DBG_PC, "cmd[0]: 0x%x, write: 0x%x, timeout: %d, "
      "cmd_flags: 0x%x",
      cmd[0], write, timeout, cmd_flags);


 do {
  struct request *rq;
  int error;

  rq = blk_get_request(drive->queue, write, __GFP_WAIT);

  memcpy(rq->cmd, cmd, BLK_MAX_CDB);
  rq->cmd_type = REQ_TYPE_ATA_PC;
  rq->sense = sense;
  rq->cmd_flags |= cmd_flags;
  rq->timeout = timeout;
  if (buffer) {
   error = blk_rq_map_kern(drive->queue, rq, buffer,
      *bufflen, GFP_NOIO);
   if (error) {
    blk_put_request(rq);
    return error;
   }
  }

  error = blk_execute_rq(drive->queue, info->disk, rq, 0);

  if (buffer)
   *bufflen = rq->resid_len;

  flags = rq->cmd_flags;
  blk_put_request(rq);





  if (flags & REQ_FAILED) {




   struct request_sense *reqbuf = sense;

   if (reqbuf->sense_key == UNIT_ATTENTION)
    cdrom_saw_media_change(drive);
   else if (reqbuf->sense_key == NOT_READY &&
     reqbuf->asc == 4 && reqbuf->ascq != 4) {





    ssleep(2);
   } else {

    retries = 0;
   }
   --retries;
  }


 } while ((flags & REQ_FAILED) && retries >= 0);


 return (flags & REQ_FAILED) ? -EIO : 0;
}
