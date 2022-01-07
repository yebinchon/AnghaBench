
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int clock_interval(size_t a, size_t b, size_t c)
{
 if (b < a) {
  if (a < c || b >= c)
   return 1;
 } else {
  if (a < c && b >= c)
   return 1;
 }

 return 0;
}
