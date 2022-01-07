
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
typedef int s64 ;


 int WLTIMEDELTA ;
 int do_settimeofday (struct timespec*) ;
 struct timespec ns_to_timespec (int) ;

__attribute__((used)) static inline void do_adj_guesttime(u64 hosttime)
{
 s64 host_tns;
 struct timespec host_ts;

 host_tns = (hosttime - WLTIMEDELTA) * 100;
 host_ts = ns_to_timespec(host_tns);

 do_settimeofday(&host_ts);
}
