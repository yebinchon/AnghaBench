
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int watchdog_work; int vco_work; int agc_work; } ;
struct rt2x00_dev {TYPE_1__ link; int cap_flags; } ;


 int CAPABILITY_VCO_RECALIBRATION ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int rt2x00link_agc ;
 int rt2x00link_tuner ;
 int rt2x00link_vcocal ;
 int rt2x00link_watchdog ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00link_register(struct rt2x00_dev *rt2x00dev)
{
 INIT_DELAYED_WORK(&rt2x00dev->link.agc_work, rt2x00link_agc);
 if (test_bit(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags))
  INIT_DELAYED_WORK(&rt2x00dev->link.vco_work, rt2x00link_vcocal);
 INIT_DELAYED_WORK(&rt2x00dev->link.watchdog_work, rt2x00link_watchdog);
 INIT_DELAYED_WORK(&rt2x00dev->link.work, rt2x00link_tuner);
}
