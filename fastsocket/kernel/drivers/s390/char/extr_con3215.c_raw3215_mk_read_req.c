
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_req {struct ccw1* ccws; struct raw3215_info* info; int type; } ;
struct raw3215_info {int inbuf; struct raw3215_req* queued_read; } ;
struct ccw1 {int cmd_code; int flags; int count; scalar_t__ cda; } ;
typedef scalar_t__ __u32 ;


 int RAW3215_READ ;
 scalar_t__ __pa (int ) ;
 struct raw3215_req* raw3215_alloc_req () ;

__attribute__((used)) static void raw3215_mk_read_req(struct raw3215_info *raw)
{
 struct raw3215_req *req;
 struct ccw1 *ccw;


 req = raw->queued_read;
 if (req == ((void*)0)) {

  req = raw3215_alloc_req();
  req->type = RAW3215_READ;
  req->info = raw;
  raw->queued_read = req;
 }

 ccw = req->ccws;
 ccw->cmd_code = 0x0A;
 ccw->flags = 0x20;
 ccw->count = 160;
 ccw->cda = (__u32) __pa(raw->inbuf);
}
