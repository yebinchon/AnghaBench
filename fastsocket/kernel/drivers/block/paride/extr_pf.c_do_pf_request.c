
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_11__ {TYPE_3__* private_data; } ;
struct TYPE_10__ {int pi; } ;
struct TYPE_9__ {int buffer; TYPE_4__* rq_disk; } ;


 int EIO ;
 scalar_t__ READ ;
 scalar_t__ WRITE ;
 TYPE_1__* blk_fetch_request (struct request_queue*) ;
 scalar_t__ blk_rq_cur_sectors (TYPE_1__*) ;
 scalar_t__ blk_rq_pos (TYPE_1__*) ;
 int blk_rq_sectors (TYPE_1__*) ;
 int do_pf_read ;
 int do_pf_write ;
 scalar_t__ get_capacity (TYPE_4__*) ;
 scalar_t__ pf_block ;
 int pf_buf ;
 int pf_busy ;
 scalar_t__ pf_cmd ;
 scalar_t__ pf_count ;
 TYPE_3__* pf_current ;
 int pf_end_request (int ) ;
 TYPE_1__* pf_req ;
 scalar_t__ pf_retries ;
 int pf_run ;
 int pi_do_claimed (int ,int ) ;
 scalar_t__ rq_data_dir (TYPE_1__*) ;

__attribute__((used)) static void do_pf_request(struct request_queue * q)
{
 if (pf_busy)
  return;
repeat:
 if (!pf_req) {
  pf_req = blk_fetch_request(q);
  if (!pf_req)
   return;
 }

 pf_current = pf_req->rq_disk->private_data;
 pf_block = blk_rq_pos(pf_req);
 pf_run = blk_rq_sectors(pf_req);
 pf_count = blk_rq_cur_sectors(pf_req);

 if (pf_block + pf_count > get_capacity(pf_req->rq_disk)) {
  pf_end_request(-EIO);
  goto repeat;
 }

 pf_cmd = rq_data_dir(pf_req);
 pf_buf = pf_req->buffer;
 pf_retries = 0;

 pf_busy = 1;
 if (pf_cmd == READ)
  pi_do_claimed(pf_current->pi, do_pf_read);
 else if (pf_cmd == WRITE)
  pi_do_claimed(pf_current->pi, do_pf_write);
 else {
  pf_busy = 0;
  pf_end_request(-EIO);
  goto repeat;
 }
}
