
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSHIFT ;
 int* avenrun ;
 scalar_t__ base_addr ;
 int out_be32 (scalar_t__,int) ;

void heartbeat(void)
{
 static unsigned int cnt, period, dist;

 if (base_addr) {
  if (cnt == 0 || cnt == dist)
   out_be32(base_addr, 1);
  else if (cnt == 7 || cnt == dist + 7)
   out_be32(base_addr, 0);

  if (++cnt > period) {
   cnt = 0;






   period = ((672 << FSHIFT) / (5 * avenrun[0] +
      (7 << FSHIFT))) + 30;
   dist = period / 4;
  }
 }
}
