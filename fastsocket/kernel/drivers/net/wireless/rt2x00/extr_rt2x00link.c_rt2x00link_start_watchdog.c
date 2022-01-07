
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct link {int watchdog_work; } ;
struct rt2x00_dev {int hw; TYPE_2__* ops; int flags; struct link link; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {scalar_t__ watchdog; } ;


 int DEVICE_STATE_PRESENT ;
 int WATCHDOG_INTERVAL ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00link_start_watchdog(struct rt2x00_dev *rt2x00dev)
{
 struct link *link = &rt2x00dev->link;

 if (test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags) &&
     rt2x00dev->ops->lib->watchdog)
  ieee80211_queue_delayed_work(rt2x00dev->hw,
          &link->watchdog_work,
          WATCHDOG_INTERVAL);
}
