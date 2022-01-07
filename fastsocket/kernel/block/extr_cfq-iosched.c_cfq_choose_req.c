
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; } ;
struct cfq_data {int cfq_back_max; scalar_t__ cfq_back_penalty; } ;
typedef scalar_t__ sector_t ;




 int REQ_META ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ rq_is_sync (struct request*) ;

__attribute__((used)) static struct request *
cfq_choose_req(struct cfq_data *cfqd, struct request *rq1, struct request *rq2, sector_t last)
{
 sector_t s1, s2, d1 = 0, d2 = 0;
 unsigned long back_max;


 unsigned wrap = 0;

 if (rq1 == ((void*)0) || rq1 == rq2)
  return rq2;
 if (rq2 == ((void*)0))
  return rq1;

 if (rq_is_sync(rq1) && !rq_is_sync(rq2))
  return rq1;
 else if (rq_is_sync(rq2) && !rq_is_sync(rq1))
  return rq2;
 if ((rq1->cmd_flags & REQ_META) && !(rq2->cmd_flags & REQ_META))
  return rq1;
 else if ((rq2->cmd_flags & REQ_META) &&
   !(rq1->cmd_flags & REQ_META))
  return rq2;

 s1 = blk_rq_pos(rq1);
 s2 = blk_rq_pos(rq2);




 back_max = cfqd->cfq_back_max * 2;






 if (s1 >= last)
  d1 = s1 - last;
 else if (s1 + back_max >= last)
  d1 = (last - s1) * cfqd->cfq_back_penalty;
 else
  wrap |= 0x01;

 if (s2 >= last)
  d2 = s2 - last;
 else if (s2 + back_max >= last)
  d2 = (last - s2) * cfqd->cfq_back_penalty;
 else
  wrap |= 0x02;







 switch (wrap) {
 case 0:
  if (d1 < d2)
   return rq1;
  else if (d2 < d1)
   return rq2;
  else {
   if (s1 >= s2)
    return rq1;
   else
    return rq2;
  }

 case 0x02:
  return rq1;
 case 0x01:
  return rq2;
 case (0x01|0x02):
 default:






  if (s1 <= s2)
   return rq1;
  else
   return rq2;
 }
}
