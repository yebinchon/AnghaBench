
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int list; struct b43_wl* wl; } ;
struct b43_wl {int nr_devs; } ;
struct b43_bus_dev {int dummy; } ;


 struct b43_wldev* b43_bus_get_wldev (struct b43_bus_dev*) ;
 int b43_bus_set_wldev (struct b43_bus_dev*,int *) ;
 int b43_debugfs_remove_device (struct b43_wldev*) ;
 int b43_wireless_core_detach (struct b43_wldev*) ;
 int kfree (struct b43_wldev*) ;
 int list_del (int *) ;

__attribute__((used)) static void b43_one_core_detach(struct b43_bus_dev *dev)
{
 struct b43_wldev *wldev;
 struct b43_wl *wl;




 wldev = b43_bus_get_wldev(dev);
 wl = wldev->wl;
 b43_debugfs_remove_device(wldev);
 b43_wireless_core_detach(wldev);
 list_del(&wldev->list);
 wl->nr_devs--;
 b43_bus_set_wldev(dev, ((void*)0));
 kfree(wldev);
}
