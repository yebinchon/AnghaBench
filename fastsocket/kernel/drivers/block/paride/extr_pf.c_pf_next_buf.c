
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;


 scalar_t__ blk_rq_cur_sectors (TYPE_1__*) ;
 int pf_block ;
 int pf_buf ;
 scalar_t__ pf_count ;
 int pf_end_request (int ) ;
 TYPE_1__* pf_req ;
 int pf_run ;
 int pf_spin_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pf_next_buf(void)
{
 unsigned long saved_flags;

 pf_count--;
 pf_run--;
 pf_buf += 512;
 pf_block++;
 if (!pf_run)
  return 1;
 if (!pf_count) {
  spin_lock_irqsave(&pf_spin_lock, saved_flags);
  pf_end_request(0);
  spin_unlock_irqrestore(&pf_spin_lock, saved_flags);
  if (!pf_req)
   return 1;
  pf_count = blk_rq_cur_sectors(pf_req);
  pf_buf = pf_req->buffer;
 }
 return 0;
}
