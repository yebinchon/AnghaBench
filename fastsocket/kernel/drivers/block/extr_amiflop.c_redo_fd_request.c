
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {char* buffer; TYPE_1__* rq_disk; } ;
struct amiga_floppy_struct {int blocks; char* trackbuf; int dirty; TYPE_3__* type; TYPE_2__* dtype; } ;
struct TYPE_6__ {unsigned int sect_mult; } ;
struct TYPE_5__ {unsigned int sects; } ;
struct TYPE_4__ {struct amiga_floppy_struct* private_data; } ;


 int EIO ;
 scalar_t__ READ ;
 scalar_t__ __blk_end_request_cur (struct request*,int) ;
 struct request* blk_fetch_request (int ) ;
 unsigned int blk_rq_cur_sectors (struct request*) ;
 unsigned int blk_rq_pos (struct request*) ;
 int fd_motor_on (int) ;
 int floppy_queue ;
 scalar_t__ flush_track_timer ;
 int get_track (int,unsigned int) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (char*,char*,int) ;
 int mod_timer (scalar_t__,scalar_t__) ;
 int printk (char*,unsigned int,unsigned int,char*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 struct amiga_floppy_struct* unit ;

__attribute__((used)) static void redo_fd_request(void)
{
 struct request *rq;
 unsigned int cnt, block, track, sector;
 int drive;
 struct amiga_floppy_struct *floppy;
 char *data;
 unsigned long flags;
 int err;

next_req:
 rq = blk_fetch_request(floppy_queue);
 if (!rq) {

  return;
 }

 floppy = rq->rq_disk->private_data;
 drive = floppy - unit;

next_segment:

 for (cnt = 0, err = 0; cnt < blk_rq_cur_sectors(rq); cnt++) {





  block = blk_rq_pos(rq) + cnt;
  if ((int)block > floppy->blocks) {
   err = -EIO;
   break;
  }

  track = block / (floppy->dtype->sects * floppy->type->sect_mult);
  sector = block % (floppy->dtype->sects * floppy->type->sect_mult);
  data = rq->buffer + 512 * cnt;





  if (get_track(drive, track) == -1) {
   err = -EIO;
   break;
  }

  if (rq_data_dir(rq) == READ) {
   memcpy(data, floppy->trackbuf + sector * 512, 512);
  } else {
   memcpy(floppy->trackbuf + sector * 512, data, 512);


   if (!fd_motor_on(drive)) {
    err = -EIO;
    break;
   }




   local_irq_save(flags);

   floppy->dirty = 1;

   mod_timer (flush_track_timer + drive, jiffies + 1);
   local_irq_restore(flags);
  }
 }

 if (__blk_end_request_cur(rq, err))
  goto next_segment;
 goto next_req;
}
