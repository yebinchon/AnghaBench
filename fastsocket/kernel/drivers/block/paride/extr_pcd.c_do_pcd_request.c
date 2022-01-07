
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct pcd_unit {int dummy; } ;
struct TYPE_9__ {int buffer; TYPE_1__* rq_disk; } ;
struct TYPE_8__ {struct pcd_unit* private_data; } ;


 int EIO ;
 scalar_t__ READ ;
 int __blk_end_request_all (TYPE_2__*,int ) ;
 TYPE_2__* blk_fetch_request (struct request_queue*) ;
 int blk_rq_cur_sectors (TYPE_2__*) ;
 int blk_rq_pos (TYPE_2__*) ;
 int do_pcd_read ;
 int nice ;
 int pcd_buf ;
 int pcd_bufblk ;
 int pcd_busy ;
 int pcd_count ;
 struct pcd_unit* pcd_current ;
 TYPE_2__* pcd_req ;
 int pcd_sector ;
 int ps_set_intr (int ,int *,int ,int ) ;
 scalar_t__ rq_data_dir (TYPE_2__*) ;

__attribute__((used)) static void do_pcd_request(struct request_queue * q)
{
 if (pcd_busy)
  return;
 while (1) {
  if (!pcd_req) {
   pcd_req = blk_fetch_request(q);
   if (!pcd_req)
    return;
  }

  if (rq_data_dir(pcd_req) == READ) {
   struct pcd_unit *cd = pcd_req->rq_disk->private_data;
   if (cd != pcd_current)
    pcd_bufblk = -1;
   pcd_current = cd;
   pcd_sector = blk_rq_pos(pcd_req);
   pcd_count = blk_rq_cur_sectors(pcd_req);
   pcd_buf = pcd_req->buffer;
   pcd_busy = 1;
   ps_set_intr(do_pcd_read, ((void*)0), 0, nice);
   return;
  } else {
   __blk_end_request_all(pcd_req, -EIO);
   pcd_req = ((void*)0);
  }
 }
}
