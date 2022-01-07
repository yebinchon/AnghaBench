
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int dummy; } ;


 int mib_counters_update (struct mv643xx_eth_private*) ;

__attribute__((used)) static void mib_counters_timer_wrapper(unsigned long _mp)
{
 struct mv643xx_eth_private *mp = (void *)_mp;

 mib_counters_update(mp);
}
