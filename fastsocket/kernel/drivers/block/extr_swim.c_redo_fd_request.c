
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int buffer; TYPE_1__* rq_disk; } ;
struct floppy_state {scalar_t__ total_secs; scalar_t__ write_protected; int disk_in; } ;
struct TYPE_2__ {struct floppy_state* private_data; } ;


 int EIO ;


 int __blk_end_request_cur (struct request*,int) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_rq_cur_sectors (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int floppy_read_sectors (struct floppy_state*,scalar_t__,int ,int ) ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static void redo_fd_request(struct request_queue *q)
{
 struct request *req;
 struct floppy_state *fs;

 req = blk_fetch_request(q);
 while (req) {
  int err = -EIO;

  fs = req->rq_disk->private_data;
  if (blk_rq_pos(req) >= fs->total_secs)
   goto done;
  if (!fs->disk_in)
   goto done;
  if (rq_data_dir(req) == 128 && fs->write_protected)
   goto done;

  switch (rq_data_dir(req)) {
  case 128:

   break;
  case 129:
   err = floppy_read_sectors(fs, blk_rq_pos(req),
        blk_rq_cur_sectors(req),
        req->buffer);
   break;
  }
 done:
  if (!__blk_end_request_cur(req, err))
   req = blk_fetch_request(q);
 }
}
