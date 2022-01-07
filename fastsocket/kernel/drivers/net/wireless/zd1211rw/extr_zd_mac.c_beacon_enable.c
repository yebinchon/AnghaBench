
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog_work; int last_update; } ;
struct zd_mac {TYPE_1__ beacon; } ;


 int BEACON_WATCHDOG_DELAY ;
 int dev_dbg_f (int ,char*) ;
 int jiffies ;
 int queue_delayed_work (int ,int *,int ) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_workqueue ;

__attribute__((used)) static void beacon_enable(struct zd_mac *mac)
{
 dev_dbg_f(zd_mac_dev(mac), "\n");

 mac->beacon.last_update = jiffies;
 queue_delayed_work(zd_workqueue, &mac->beacon.watchdog_work,
      BEACON_WATCHDOG_DELAY);
}
