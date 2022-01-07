
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct delayed_work {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; scalar_t__ periodic_state; struct delayed_work periodic_work; } ;
struct TYPE_2__ {int hw; } ;


 int INIT_DELAYED_WORK (struct delayed_work*,int ) ;
 int b43legacy_periodic_work_handler ;
 int ieee80211_queue_delayed_work (int ,struct delayed_work*,int ) ;

__attribute__((used)) static void b43legacy_periodic_tasks_setup(struct b43legacy_wldev *dev)
{
 struct delayed_work *work = &dev->periodic_work;

 dev->periodic_state = 0;
 INIT_DELAYED_WORK(work, b43legacy_periodic_work_handler);
 ieee80211_queue_delayed_work(dev->wl->hw, work, 0);
}
