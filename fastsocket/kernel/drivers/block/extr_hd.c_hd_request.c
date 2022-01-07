
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int buffer; TYPE_1__* rq_disk; } ;
struct hd_i_struct {unsigned int sect; unsigned int head; scalar_t__ special_op; } ;
struct TYPE_2__ {int disk_name; struct hd_i_struct* private_data; } ;


 int ATA_CMD_PIO_READ ;
 int ATA_CMD_PIO_WRITE ;
 int EIO ;
 int HD_DATA ;


 int bad_rw_intr () ;
 struct request* blk_fetch_request (int ) ;
 scalar_t__ blk_fs_request (struct request*) ;
 unsigned int blk_rq_pos (struct request*) ;
 unsigned int blk_rq_sectors (struct request*) ;
 int del_timer (int *) ;
 int device_timer ;
 int * do_hd ;
 scalar_t__ do_special_op (struct hd_i_struct*,struct request*) ;
 unsigned int get_capacity (TYPE_1__*) ;
 int hd_end_request_cur (int ) ;
 int hd_out (struct hd_i_struct*,unsigned int,unsigned int,unsigned int,unsigned int,int ,int *) ;
 int hd_queue ;
 struct request* hd_req ;
 int outsw (int ,int ,int) ;
 int printk (char*,...) ;
 int read_intr ;
 scalar_t__ req_data_dir (struct request*) ;
 scalar_t__ reset ;
 int reset_hd () ;
 int rq_data_dir (struct request*) ;
 int wait_DRQ () ;
 int write_intr ;

__attribute__((used)) static void hd_request(void)
{
 unsigned int block, nsect, sec, track, head, cyl;
 struct hd_i_struct *disk;
 struct request *req;

 if (do_hd)
  return;
repeat:
 del_timer(&device_timer);

 if (!hd_req) {
  hd_req = blk_fetch_request(hd_queue);
  if (!hd_req) {
   do_hd = ((void*)0);
   return;
  }
 }
 req = hd_req;

 if (reset) {
  reset_hd();
  return;
 }
 disk = req->rq_disk->private_data;
 block = blk_rq_pos(req);
 nsect = blk_rq_sectors(req);
 if (block >= get_capacity(req->rq_disk) ||
     ((block+nsect) > get_capacity(req->rq_disk))) {
  printk("%s: bad access: block=%d, count=%d\n",
   req->rq_disk->disk_name, block, nsect);
  hd_end_request_cur(-EIO);
  goto repeat;
 }

 if (disk->special_op) {
  if (do_special_op(disk, req))
   goto repeat;
  return;
 }
 sec = block % disk->sect + 1;
 track = block / disk->sect;
 head = track % disk->head;
 cyl = track / disk->head;






 if (blk_fs_request(req)) {
  switch (rq_data_dir(req)) {
  case 129:
   hd_out(disk, nsect, sec, head, cyl, ATA_CMD_PIO_READ,
    &read_intr);
   if (reset)
    goto repeat;
   break;
  case 128:
   hd_out(disk, nsect, sec, head, cyl, ATA_CMD_PIO_WRITE,
    &write_intr);
   if (reset)
    goto repeat;
   if (wait_DRQ()) {
    bad_rw_intr();
    goto repeat;
   }
   outsw(HD_DATA, req->buffer, 256);
   break;
  default:
   printk("unknown hd-command\n");
   hd_end_request_cur(-EIO);
   break;
  }
 }
}
