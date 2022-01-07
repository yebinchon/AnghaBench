
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;


 int WARN_ON (int ) ;
 int ktime_get_ts (struct timespec*) ;
 int monotonic_to_bootbased (struct timespec*) ;
 int preemptible () ;
 int timespec_to_ns (struct timespec*) ;

__attribute__((used)) static inline u64 get_kernel_ns(void)
{
 struct timespec ts;

 WARN_ON(preemptible());
 ktime_get_ts(&ts);
 monotonic_to_bootbased(&ts);
 return timespec_to_ns(&ts);
}
