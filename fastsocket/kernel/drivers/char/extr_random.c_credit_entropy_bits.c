
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int entropy_count; int lock; TYPE_1__* poolinfo; int name; } ;
struct TYPE_2__ {int POOLBITS; } ;


 int DEBUG_ENT (char*,...) ;
 int POLL_IN ;
 int SIGIO ;
 int fasync ;
 struct entropy_store input_pool ;
 int kill_fasync (int *,int ,int ) ;
 int random_read_wait ;
 int random_read_wakeup_thresh ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void credit_entropy_bits(struct entropy_store *r, int nbits)
{
 unsigned long flags;
 int entropy_count;

 if (!nbits)
  return;

 spin_lock_irqsave(&r->lock, flags);

 DEBUG_ENT("added %d entropy credits to %s\n", nbits, r->name);
 entropy_count = r->entropy_count;
 entropy_count += nbits;
 if (entropy_count < 0) {
  DEBUG_ENT("negative entropy/overflow\n");
  entropy_count = 0;
 } else if (entropy_count > r->poolinfo->POOLBITS)
  entropy_count = r->poolinfo->POOLBITS;
 r->entropy_count = entropy_count;


 if (r == &input_pool && entropy_count >= random_read_wakeup_thresh) {
  wake_up_interruptible(&random_read_wait);
  kill_fasync(&fasync, SIGIO, POLL_IN);
 }
 spin_unlock_irqrestore(&r->lock, flags);
}
