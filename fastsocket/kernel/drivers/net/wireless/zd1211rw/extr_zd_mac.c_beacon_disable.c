
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog_work; } ;
struct zd_mac {TYPE_1__ beacon; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg_f (int ,char*) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_mac_free_cur_beacon (struct zd_mac*) ;

__attribute__((used)) static void beacon_disable(struct zd_mac *mac)
{
 dev_dbg_f(zd_mac_dev(mac), "\n");
 cancel_delayed_work_sync(&mac->beacon.watchdog_work);

 zd_mac_free_cur_beacon(mac);
}
