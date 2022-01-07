
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int entropy_count; int lock; scalar_t__ limit; int name; TYPE_1__* poolinfo; } ;
struct TYPE_2__ {int POOLBITS; } ;


 int BUG_ON (int) ;
 int DEBUG_ENT (char*,size_t,int ,...) ;
 int POLL_OUT ;
 int SIGIO ;
 int fasync ;
 int kill_fasync (int *,int ,int ) ;
 int random_write_wait ;
 int random_write_wakeup_thresh ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static size_t account(struct entropy_store *r, size_t nbytes, int min,
        int reserved)
{
 unsigned long flags;


 spin_lock_irqsave(&r->lock, flags);

 BUG_ON(r->entropy_count > r->poolinfo->POOLBITS);
 DEBUG_ENT("trying to extract %d bits from %s\n",
    nbytes * 8, r->name);


 if (r->entropy_count / 8 < min + reserved) {
  nbytes = 0;
 } else {

  if (r->limit && nbytes + reserved >= r->entropy_count / 8)
   nbytes = r->entropy_count/8 - reserved;

  if (r->entropy_count / 8 >= nbytes + reserved)
   r->entropy_count -= nbytes*8;
  else
   r->entropy_count = reserved;

  if (r->entropy_count < random_write_wakeup_thresh) {
   wake_up_interruptible(&random_write_wait);
   kill_fasync(&fasync, SIGIO, POLL_OUT);
  }
 }

 DEBUG_ENT("debiting %d entropy credits from %s%s\n",
    nbytes * 8, r->name, r->limit ? "" : " (unlimited)");

 spin_unlock_irqrestore(&r->lock, flags);

 return nbytes;
}
