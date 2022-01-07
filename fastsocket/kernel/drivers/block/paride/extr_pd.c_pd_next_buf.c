
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;


 int __blk_end_request_cur (TYPE_1__*,int ) ;
 scalar_t__ blk_rq_cur_sectors (TYPE_1__*) ;
 int pd_block ;
 int pd_buf ;
 scalar_t__ pd_count ;
 int pd_lock ;
 TYPE_1__* pd_req ;
 int pd_run ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pd_next_buf(void)
{
 unsigned long saved_flags;

 pd_count--;
 pd_run--;
 pd_buf += 512;
 pd_block++;
 if (!pd_run)
  return 1;
 if (pd_count)
  return 0;
 spin_lock_irqsave(&pd_lock, saved_flags);
 __blk_end_request_cur(pd_req, 0);
 pd_count = blk_rq_cur_sectors(pd_req);
 pd_buf = pd_req->buffer;
 spin_unlock_irqrestore(&pd_lock, saved_flags);
 return 0;
}
