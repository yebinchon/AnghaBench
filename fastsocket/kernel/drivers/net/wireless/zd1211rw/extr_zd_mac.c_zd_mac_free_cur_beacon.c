
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct zd_mac {TYPE_1__ chip; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_mac_free_cur_beacon_locked (struct zd_mac*) ;

__attribute__((used)) static void zd_mac_free_cur_beacon(struct zd_mac *mac)
{
 mutex_lock(&mac->chip.mutex);
 zd_mac_free_cur_beacon_locked(mac);
 mutex_unlock(&mac->chip.mutex);
}
