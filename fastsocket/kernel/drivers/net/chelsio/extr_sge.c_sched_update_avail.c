
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {struct sched* tx_sched; } ;
struct sched_port {long long drain_bits_per_1024ns; scalar_t__ avail; } ;
struct sched {int last_updated; int max_avail; struct sched_port* p; } ;
typedef int ktime_t ;


 unsigned int MAX_NPORTS ;
 int get_clock () ;
 int ktime_sub (int ,int ) ;
 long long ktime_to_ns (int ) ;
 scalar_t__ min (scalar_t__,int ) ;
 int pr_debug (char*,long long) ;

__attribute__((used)) static inline int sched_update_avail(struct sge *sge)
{
 struct sched *s = sge->tx_sched;
 ktime_t now = get_clock();
 unsigned int i;
 long long delta_time_ns;

 delta_time_ns = ktime_to_ns(ktime_sub(now, s->last_updated));

 pr_debug("sched_update_avail delta=%lld\n", delta_time_ns);
 if (delta_time_ns < 15000)
  return 0;

 for (i = 0; i < MAX_NPORTS; i++) {
  struct sched_port *p = &s->p[i];
  unsigned int delta_avail;

  delta_avail = (p->drain_bits_per_1024ns * delta_time_ns) >> 13;
  p->avail = min(p->avail + delta_avail, s->max_avail);
 }

 s->last_updated = now;

 return 1;
}
