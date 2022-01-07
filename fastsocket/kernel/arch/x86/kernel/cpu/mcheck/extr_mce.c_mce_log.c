
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mce {int finished; } ;
struct TYPE_4__ {TYPE_1__* entry; int next; int flags; } ;
struct TYPE_3__ {int finished; } ;


 unsigned int MCE_LOG_LEN ;
 int MCE_OVERFLOW ;
 int NOTIFY_STOP ;
 int atomic_notifier_call_chain (int *,int ,struct mce*) ;
 unsigned int cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned long mce_need_notify ;
 TYPE_2__ mcelog ;
 int memcpy (TYPE_1__*,struct mce*,int) ;
 unsigned int rcu_dereference (int ) ;
 int set_bit (int ,unsigned long*) ;
 int smp_rmb () ;
 int trace_mce_record (struct mce*) ;
 int wmb () ;
 int x86_mce_decoder_chain ;

void mce_log(struct mce *mce)
{
 unsigned next, entry;
 int ret = 0;


 trace_mce_record(mce);

 ret = atomic_notifier_call_chain(&x86_mce_decoder_chain, 0, mce);
 if (ret == NOTIFY_STOP)
  return;

 mce->finished = 0;
 wmb();
 for (;;) {
  entry = rcu_dereference(mcelog.next);
  for (;;) {






   if (entry >= MCE_LOG_LEN) {
    set_bit(MCE_OVERFLOW,
     (unsigned long *)&mcelog.flags);
    return;
   }

   if (mcelog.entry[entry].finished) {
    entry++;
    continue;
   }
   break;
  }
  smp_rmb();
  next = entry + 1;
  if (cmpxchg(&mcelog.next, entry, next) == entry)
   break;
 }
 memcpy(mcelog.entry + entry, mce, sizeof(struct mce));
 wmb();
 mcelog.entry[entry].finished = 1;
 wmb();

 mce->finished = 1;
 set_bit(0, &mce_need_notify);
}
