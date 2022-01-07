
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int agc_work; } ;
struct rt2x00_dev {TYPE_1__ link; } ;


 int cancel_delayed_work_sync (int *) ;

void rt2x00link_stop_agc(struct rt2x00_dev *rt2x00dev)
{
 cancel_delayed_work_sync(&rt2x00dev->link.agc_work);
}
