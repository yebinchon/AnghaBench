
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int finished; } ;
struct TYPE_2__ {int next; struct mce* entry; } ;


 int atomic_notifier_call_chain (int *,int ,struct mce*) ;
 unsigned int cmpxchg (int *,unsigned int,int ) ;
 int cpu_relax () ;
 unsigned long jiffies ;
 TYPE_1__ mcelog ;
 int memset (struct mce*,int ,unsigned int) ;
 int pr_err (char*) ;
 unsigned int rcu_dereference (int ) ;
 int smp_rmb () ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int x86_mce_decoder_chain ;

__attribute__((used)) static void drain_mcelog_buffer(void)
{
 unsigned int next, i, prev = 0;

 next = rcu_dereference(mcelog.next);

 do {
  struct mce *m;


  for (i = prev; i < next; i++) {
   unsigned long start = jiffies;
   unsigned retries = 1;

   m = &mcelog.entry[i];

   while (!m->finished) {
    if (time_after_eq(jiffies, start + 2*retries))
     retries++;

    cpu_relax();

    if (!m->finished && retries >= 4) {
     pr_err("MCE: skipping error being logged currently!\n");
     break;
    }
   }
   smp_rmb();
   atomic_notifier_call_chain(&x86_mce_decoder_chain, 0, m);
  }

  memset(mcelog.entry + prev, 0, (next - prev) * sizeof(*m));
  prev = next;
  next = cmpxchg(&mcelog.next, prev, 0);
 } while (next != prev);
}
