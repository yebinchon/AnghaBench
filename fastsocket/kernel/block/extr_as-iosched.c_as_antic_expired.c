
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_data {long antic_start; long antic_expire; } ;


 long jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int as_antic_expired(struct as_data *ad)
{
 long delta_jif;

 delta_jif = jiffies - ad->antic_start;
 if (unlikely(delta_jif < 0))
  delta_jif = -delta_jif;
 if (delta_jif < ad->antic_expire)
  return 0;

 return 1;
}
