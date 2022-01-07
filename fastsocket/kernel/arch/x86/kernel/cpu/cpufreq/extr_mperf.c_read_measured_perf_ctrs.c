
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aperfmperf {int dummy; } ;


 int get_aperfmperf (struct aperfmperf*) ;

__attribute__((used)) static void read_measured_perf_ctrs(void *_cur)
{
 struct aperfmperf *am = _cur;

 get_aperfmperf(am);
}
