
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bio {scalar_t__ bi_sector; } ;


 int ELEVATOR_BACK_MERGE ;
 int ELEVATOR_FRONT_MERGE ;
 int ELEVATOR_NO_MERGE ;
 scalar_t__ bio_sectors (struct bio*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;

int blk_try_merge(struct request *rq, struct bio *bio)
{
 if (blk_rq_pos(rq) + blk_rq_sectors(rq) == bio->bi_sector)
  return ELEVATOR_BACK_MERGE;
 else if (blk_rq_pos(rq) - bio_sectors(bio) == bio->bi_sector)
  return ELEVATOR_FRONT_MERGE;
 return ELEVATOR_NO_MERGE;
}
