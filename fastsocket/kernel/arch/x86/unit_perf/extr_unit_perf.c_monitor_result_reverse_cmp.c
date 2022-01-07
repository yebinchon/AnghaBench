
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor_result {scalar_t__ overflow; scalar_t__ cost; } ;



__attribute__((used)) static int monitor_result_reverse_cmp(const void *a, const void *b)
{
 const struct monitor_result *s1 = a;
 const struct monitor_result *s2 = b;


 if (s1->overflow < s2->overflow) {
  return 1;
 } else if (s1->overflow > s2->overflow) {
  return -1;
 } else {
  if (s1->cost < s2->cost) {
   return 1;
  } else if (s1->cost > s2->cost) {
   return -1;
  } else {
   return 0;
  }
 }
}
