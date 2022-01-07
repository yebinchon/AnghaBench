
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {struct mg_host* queuedata; } ;
struct mg_host {TYPE_1__* req; } ;
struct TYPE_5__ {scalar_t__ cmd_type; } ;


 int EIO ;
 scalar_t__ READ ;
 scalar_t__ REQ_TYPE_FS ;
 TYPE_1__* blk_fetch_request (struct request_queue*) ;
 int mg_end_request_cur (struct mg_host*,int ) ;
 int mg_read (TYPE_1__*) ;
 int mg_write (TYPE_1__*) ;
 scalar_t__ rq_data_dir (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mg_request_poll(struct request_queue *q)
{
 struct mg_host *host = q->queuedata;

 while (1) {
  if (!host->req) {
   host->req = blk_fetch_request(q);
   if (!host->req)
    break;
  }

  if (unlikely(host->req->cmd_type != REQ_TYPE_FS)) {
   mg_end_request_cur(host, -EIO);
   continue;
  }

  if (rq_data_dir(host->req) == READ)
   mg_read(host->req);
  else
   mg_write(host->req);
 }
}
