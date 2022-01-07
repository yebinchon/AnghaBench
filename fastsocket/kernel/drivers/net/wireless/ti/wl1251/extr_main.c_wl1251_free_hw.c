
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int hw; int * rx_descriptor; int * nvs; int * fw; int * data_path; int * target_mem_map; } ;


 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int kfree (int *) ;
 int vfree (int *) ;
 int wl1251_debugfs_exit (struct wl1251*) ;

int wl1251_free_hw(struct wl1251 *wl)
{
 ieee80211_unregister_hw(wl->hw);

 wl1251_debugfs_exit(wl);

 kfree(wl->target_mem_map);
 kfree(wl->data_path);
 vfree(wl->fw);
 wl->fw = ((void*)0);
 kfree(wl->nvs);
 wl->nvs = ((void*)0);

 kfree(wl->rx_descriptor);
 wl->rx_descriptor = ((void*)0);

 ieee80211_free_hw(wl->hw);

 return 0;
}
