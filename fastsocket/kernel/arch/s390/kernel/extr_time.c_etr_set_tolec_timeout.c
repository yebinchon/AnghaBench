
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p1; int p0; } ;


 unsigned long HZ ;
 TYPE_1__ etr_eacr ;
 scalar_t__ etr_port0_uptodate ;
 scalar_t__ etr_port1_uptodate ;
 int etr_timer ;
 unsigned long long etr_tolec ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void etr_set_tolec_timeout(unsigned long long now)
{
 unsigned long micros;

 if ((!etr_eacr.p0 || etr_port0_uptodate) &&
     (!etr_eacr.p1 || etr_port1_uptodate))
  return;
 micros = (now > etr_tolec) ? ((now - etr_tolec) >> 12) : 0;
 micros = (micros > 1600000) ? 0 : 1600000 - micros;
 mod_timer(&etr_timer, jiffies + (micros * HZ) / 1000000 + 1);
}
