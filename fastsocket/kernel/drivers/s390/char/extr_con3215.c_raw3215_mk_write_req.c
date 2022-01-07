
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_req {int len; int start; int delayable; struct ccw1* ccws; struct raw3215_info* info; int type; } ;
struct raw3215_info {int count; int written; int head; int* buffer; struct raw3215_req* queued_write; } ;
struct ccw1 {int flags; int cmd_code; int count; scalar_t__ cda; } ;
typedef scalar_t__ __u32 ;


 int RAW3215_BUFFER_SIZE ;
 int RAW3215_MAX_BYTES ;
 int RAW3215_MAX_NEWLINE ;
 int RAW3215_MIN_WRITE ;
 int RAW3215_WRITE ;
 scalar_t__ __pa (int*) ;
 struct raw3215_req* raw3215_alloc_req () ;

__attribute__((used)) static void raw3215_mk_write_req(struct raw3215_info *raw)
{
 struct raw3215_req *req;
 struct ccw1 *ccw;
 int len, count, ix, lines;

 if (raw->count <= raw->written)
  return;

 req = raw->queued_write;
 if (req == ((void*)0)) {

  req = raw3215_alloc_req();
  req->type = RAW3215_WRITE;
  req->info = raw;
  raw->queued_write = req;
 } else {
  raw->written -= req->len;
 }

 ccw = req->ccws;
 req->start = (raw->head - raw->count + raw->written) &
       (RAW3215_BUFFER_SIZE - 1);





 lines = 0;
 ix = req->start;
 while (lines < RAW3215_MAX_NEWLINE && ix != raw->head) {
  if (raw->buffer[ix] == 0x15)
   lines++;
  ix = (ix + 1) & (RAW3215_BUFFER_SIZE - 1);
 }
 len = ((ix - 1 - req->start) & (RAW3215_BUFFER_SIZE - 1)) + 1;
 if (len > RAW3215_MAX_BYTES)
  len = RAW3215_MAX_BYTES;
 req->len = len;
 raw->written += len;


 req->delayable = (ix == raw->head) && (len < RAW3215_MIN_WRITE);

 ix = req->start;
 while (len > 0) {
  if (ccw > req->ccws)
   ccw[-1].flags |= 0x40;
  ccw->cmd_code = 0x01;
  ccw->flags = 0x20;
  ccw->cda =
   (__u32) __pa(raw->buffer + ix);
  count = len;
  if (ix + count > RAW3215_BUFFER_SIZE)
   count = RAW3215_BUFFER_SIZE - ix;
  ccw->count = count;
  len -= count;
  ix = (ix + count) & (RAW3215_BUFFER_SIZE - 1);
  ccw++;
 }





 if (ccw > req->ccws)
  ccw[-1].flags |= 0x40;
 ccw->cmd_code = 0x03;
 ccw->flags = 0;
 ccw->cda = 0;
 ccw->count = 1;
}
