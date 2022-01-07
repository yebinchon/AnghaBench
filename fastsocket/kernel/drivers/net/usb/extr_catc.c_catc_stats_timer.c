
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catc {int timer; } ;


 scalar_t__ EthStats ;
 scalar_t__ STATS_UPDATE ;
 int catc_get_reg_async (struct catc*,scalar_t__,int ) ;
 int catc_stats_done ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void catc_stats_timer(unsigned long data)
{
 struct catc *catc = (void *) data;
 int i;

 for (i = 0; i < 8; i++)
  catc_get_reg_async(catc, EthStats + 7 - i, catc_stats_done);

 mod_timer(&catc->timer, jiffies + STATS_UPDATE);
}
