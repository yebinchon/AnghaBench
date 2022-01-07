
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* rq_disk; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 scalar_t__ __blk_end_request (struct request*,int,unsigned int) ;
 unsigned int blk_rq_cur_sectors (struct request*) ;
 unsigned int current_count_sectors ;
 int * current_req ;
 int floppy_off (unsigned int) ;

__attribute__((used)) static void floppy_end_request(struct request *req, int error)
{
 unsigned int nr_sectors = current_count_sectors;
 unsigned int drive = (unsigned long)req->rq_disk->private_data;


 if (error)
  nr_sectors = blk_rq_cur_sectors(req);
 if (__blk_end_request(req, error, nr_sectors << 9))
  return;


 floppy_off(drive);
 current_req = ((void*)0);
}
