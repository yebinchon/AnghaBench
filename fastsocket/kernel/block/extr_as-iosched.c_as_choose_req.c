
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct as_data {scalar_t__* last_sector; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ BACK_PENALTY ;
 int BUG_ON (int) ;
 scalar_t__ MAXBACK ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static struct request *
as_choose_req(struct as_data *ad, struct request *rq1, struct request *rq2)
{
 int data_dir;
 sector_t last, s1, s2, d1, d2;
 int r1_wrap=0, r2_wrap=0;
 const sector_t maxback = MAXBACK;

 if (rq1 == ((void*)0) || rq1 == rq2)
  return rq2;
 if (rq2 == ((void*)0))
  return rq1;

 data_dir = rq_is_sync(rq1);

 last = ad->last_sector[data_dir];
 s1 = blk_rq_pos(rq1);
 s2 = blk_rq_pos(rq2);

 BUG_ON(data_dir != rq_is_sync(rq2));






 if (s1 >= last)
  d1 = s1 - last;
 else if (s1+maxback >= last)
  d1 = (last - s1)*BACK_PENALTY;
 else {
  r1_wrap = 1;
  d1 = 0;
 }

 if (s2 >= last)
  d2 = s2 - last;
 else if (s2+maxback >= last)
  d2 = (last - s2)*BACK_PENALTY;
 else {
  r2_wrap = 1;
  d2 = 0;
 }


 if (!r1_wrap && r2_wrap)
  return rq1;
 else if (!r2_wrap && r1_wrap)
  return rq2;
 else if (r1_wrap && r2_wrap) {

  if (s1 <= s2)
   return rq1;
  else
   return rq2;
 }


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
}
