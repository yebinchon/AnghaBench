
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int errors; int buffer; int cmd; TYPE_1__* rq_disk; } ;
struct floppy_state {scalar_t__ state; scalar_t__ total_secs; scalar_t__ write_prot; long req_cyl; long secpercyl; unsigned long head; unsigned long secpertrack; unsigned long req_sector; scalar_t__ retries; scalar_t__ ejected; int wait; scalar_t__ wanted; } ;
struct TYPE_2__ {int disk_name; } ;


 int EIO ;
 scalar_t__ WRITE ;
 int WRITE_PROT ;
 int act (struct floppy_state*) ;
 scalar_t__ available ;
 struct request* blk_fetch_request (int ) ;
 int blk_rq_cur_sectors (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 scalar_t__ do_transfer ;
 struct request* fd_req ;
 scalar_t__ idle ;
 int printk (char*,int ,int ,...) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int swim3_end_request_cur (int ) ;
 int swim3_queue ;
 scalar_t__ swim3_readbit (struct floppy_state*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void start_request(struct floppy_state *fs)
{
 struct request *req;
 unsigned long x;

 if (fs->state == idle && fs->wanted) {
  fs->state = available;
  wake_up(&fs->wait);
  return;
 }
 while (fs->state == idle) {
  if (!fd_req) {
   fd_req = blk_fetch_request(swim3_queue);
   if (!fd_req)
    break;
  }
  req = fd_req;
  if (blk_rq_pos(req) >= fs->total_secs) {
   swim3_end_request_cur(-EIO);
   continue;
  }
  if (fs->ejected) {
   swim3_end_request_cur(-EIO);
   continue;
  }

  if (rq_data_dir(req) == WRITE) {
   if (fs->write_prot < 0)
    fs->write_prot = swim3_readbit(fs, WRITE_PROT);
   if (fs->write_prot) {
    swim3_end_request_cur(-EIO);
    continue;
   }
  }







  fs->req_cyl = ((long)blk_rq_pos(req)) / fs->secpercyl;
  x = ((long)blk_rq_pos(req)) % fs->secpercyl;
  fs->head = x / fs->secpertrack;
  fs->req_sector = x % fs->secpertrack + 1;
  fd_req = req;
  fs->state = do_transfer;
  fs->retries = 0;

  act(fs);
 }
}
