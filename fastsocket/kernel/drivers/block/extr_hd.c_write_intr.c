
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int buffer; } ;


 int BUSY_STAT ;
 int DRQ_STAT ;
 int HD_DATA ;
 int HD_STATUS ;
 int OK_STATUS (int) ;
 int SET_HANDLER (void (*) ()) ;
 int bad_rw_intr () ;
 int blk_rq_sectors (struct request*) ;
 int dump_status (char*,int) ;
 scalar_t__ hd_end_request (int ,int) ;
 struct request* hd_req ;
 int hd_request () ;
 scalar_t__ inb_p (int ) ;
 int last_req ;
 int outsw (int ,int ,int) ;
 int read_timer () ;

__attribute__((used)) static void write_intr(void)
{
 struct request *req = hd_req;
 int i;
 int retries = 100000;

 do {
  i = (unsigned) inb_p(HD_STATUS);
  if (i & BUSY_STAT)
   continue;
  if (!OK_STATUS(i))
   break;
  if ((blk_rq_sectors(req) <= 1) || (i & DRQ_STAT))
   goto ok_to_write;
 } while (--retries > 0);
 dump_status("write_intr", i);
 bad_rw_intr();
 hd_request();
 return;

ok_to_write:
 if (hd_end_request(0, 512)) {
  SET_HANDLER(&write_intr);
  outsw(HD_DATA, req->buffer, 256);
  return;
 }




 hd_request();
}
