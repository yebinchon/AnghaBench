
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct cfq_data {scalar_t__ last_position; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ blk_rq_pos (struct request*) ;

__attribute__((used)) static inline sector_t cfq_dist_from_last(struct cfq_data *cfqd,
       struct request *rq)
{
 if (blk_rq_pos(rq) >= cfqd->last_position)
  return blk_rq_pos(rq) - cfqd->last_position;
 else
  return cfqd->last_position - blk_rq_pos(rq);
}
