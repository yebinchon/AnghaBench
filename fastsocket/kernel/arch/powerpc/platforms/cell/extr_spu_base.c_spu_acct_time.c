
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {unsigned long long* times; int util_state; scalar_t__ tstamp; } ;
struct spu {TYPE_1__ stats; } ;
typedef enum spu_utilization_state { ____Placeholder_spu_utilization_state } spu_utilization_state ;


 unsigned long long NSEC_PER_MSEC ;
 int ktime_get_ts (struct timespec*) ;
 scalar_t__ timespec_to_ns (struct timespec*) ;

__attribute__((used)) static unsigned long long spu_acct_time(struct spu *spu,
  enum spu_utilization_state state)
{
 struct timespec ts;
 unsigned long long time = spu->stats.times[state];






 if (spu->stats.util_state == state) {
  ktime_get_ts(&ts);
  time += timespec_to_ns(&ts) - spu->stats.tstamp;
 }

 return time / NSEC_PER_MSEC;
}
