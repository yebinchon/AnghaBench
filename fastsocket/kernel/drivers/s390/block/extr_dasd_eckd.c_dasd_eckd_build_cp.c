
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int* feature; } ;
struct dasd_eckd_private {unsigned int fcx_max_data; TYPE_1__ features; scalar_t__ uses_cdl; int rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; struct dasd_device* base; } ;
typedef int sector_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 struct dasd_ccw_req* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 scalar_t__ READ ;
 scalar_t__ WRITE ;
 unsigned int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 struct dasd_ccw_req* dasd_eckd_build_cp_cmd_single (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 struct dasd_ccw_req* dasd_eckd_build_cp_cmd_track (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 struct dasd_ccw_req* dasd_eckd_build_cp_tpm_track (struct dasd_device*,struct dasd_block*,struct request*,int,int,int,int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ dasd_page_cache ;
 unsigned int recs_per_track (int *,int ,unsigned int) ;
 scalar_t__ rq_data_dir (struct request*) ;
 unsigned int sector_div (int,unsigned int) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_eckd_build_cp(struct dasd_device *startdev,
            struct dasd_block *block,
            struct request *req)
{
 int cmdrtd, cmdwtd;
 int use_prefix;
 int fcx_multitrack;
 struct dasd_eckd_private *private;
 struct dasd_device *basedev;
 sector_t first_rec, last_rec;
 sector_t first_trk, last_trk;
 unsigned int first_offs, last_offs;
 unsigned int blk_per_trk, blksize;
 int cdlspecial;
 unsigned int data_size;
 struct dasd_ccw_req *cqr;

 basedev = block->base;
 private = (struct dasd_eckd_private *) basedev->private;


 blksize = block->bp_block;
 blk_per_trk = recs_per_track(&private->rdc_data, 0, blksize);
 if (blk_per_trk == 0)
  return ERR_PTR(-EINVAL);

 first_rec = first_trk = blk_rq_pos(req) >> block->s2b_shift;
 first_offs = sector_div(first_trk, blk_per_trk);
 last_rec = last_trk =
  (blk_rq_pos(req) + blk_rq_sectors(req) - 1) >> block->s2b_shift;
 last_offs = sector_div(last_trk, blk_per_trk);
 cdlspecial = (private->uses_cdl && first_rec < 2*blk_per_trk);

 fcx_multitrack = private->features.feature[40] & 0x20;
 data_size = blk_rq_bytes(req);

 if (rq_data_dir(req) == WRITE)
  data_size += (last_trk - first_trk) * 4;


 cmdrtd = private->features.feature[9] & 0x20;
 cmdwtd = private->features.feature[12] & 0x40;
 use_prefix = private->features.feature[8] & 0x01;

 cqr = ((void*)0);
 if (cdlspecial || dasd_page_cache) {

 } else if ((data_size <= private->fcx_max_data)
     && (fcx_multitrack || (first_trk == last_trk))) {
  cqr = dasd_eckd_build_cp_tpm_track(startdev, block, req,
          first_rec, last_rec,
          first_trk, last_trk,
          first_offs, last_offs,
          blk_per_trk, blksize);
  if (IS_ERR(cqr) && (PTR_ERR(cqr) != -EAGAIN) &&
      (PTR_ERR(cqr) != -ENOMEM))
   cqr = ((void*)0);
 } else if (use_prefix &&
     (((rq_data_dir(req) == READ) && cmdrtd) ||
      ((rq_data_dir(req) == WRITE) && cmdwtd))) {
  cqr = dasd_eckd_build_cp_cmd_track(startdev, block, req,
         first_rec, last_rec,
         first_trk, last_trk,
         first_offs, last_offs,
         blk_per_trk, blksize);
  if (IS_ERR(cqr) && (PTR_ERR(cqr) != -EAGAIN) &&
      (PTR_ERR(cqr) != -ENOMEM))
   cqr = ((void*)0);
 }
 if (!cqr)
  cqr = dasd_eckd_build_cp_cmd_single(startdev, block, req,
          first_rec, last_rec,
          first_trk, last_trk,
          first_offs, last_offs,
          blk_per_trk, blksize);
 return cqr;
}
