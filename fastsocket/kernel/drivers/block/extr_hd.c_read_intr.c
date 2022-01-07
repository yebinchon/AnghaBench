
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ buffer; TYPE_1__* rq_disk; } ;
struct TYPE_2__ {int disk_name; } ;


 int BUSY_STAT ;
 int DRQ_STAT ;
 int HD_DATA ;
 int HD_STATUS ;
 int OK_STATUS (int) ;
 int SET_HANDLER (void (*) ()) ;
 int bad_rw_intr () ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int dump_status (char*,int) ;
 scalar_t__ hd_end_request (int ,int) ;
 struct request* hd_req ;
 int hd_request () ;
 scalar_t__ inb_p (int ) ;
 int insw (int ,scalar_t__,int) ;
 int last_req ;
 int printk (char*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int read_timer () ;

__attribute__((used)) static void read_intr(void)
{
 struct request *req;
 int i, retries = 100000;

 do {
  i = (unsigned) inb_p(HD_STATUS);
  if (i & BUSY_STAT)
   continue;
  if (!OK_STATUS(i))
   break;
  if (i & DRQ_STAT)
   goto ok_to_read;
 } while (--retries > 0);
 dump_status("read_intr", i);
 bad_rw_intr();
 hd_request();
 return;

ok_to_read:
 req = hd_req;
 insw(HD_DATA, req->buffer, 256);





 if (hd_end_request(0, 512)) {
  SET_HANDLER(&read_intr);
  return;
 }

 (void) inb_p(HD_STATUS);



 hd_request();
}
