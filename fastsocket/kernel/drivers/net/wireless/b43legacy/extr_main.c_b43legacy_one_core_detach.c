
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct b43legacy_wldev {int list; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int nr_devs; } ;


 int b43legacy_debugfs_remove_device (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_detach (struct b43legacy_wldev*) ;
 int kfree (struct b43legacy_wldev*) ;
 int list_del (int *) ;
 struct b43legacy_wldev* ssb_get_drvdata (struct ssb_device*) ;
 int ssb_set_drvdata (struct ssb_device*,int *) ;

__attribute__((used)) static void b43legacy_one_core_detach(struct ssb_device *dev)
{
 struct b43legacy_wldev *wldev;
 struct b43legacy_wl *wl;




 wldev = ssb_get_drvdata(dev);
 wl = wldev->wl;
 b43legacy_debugfs_remove_device(wldev);
 b43legacy_wireless_core_detach(wldev);
 list_del(&wldev->list);
 wl->nr_devs--;
 ssb_set_drvdata(dev, ((void*)0));
 kfree(wldev);
}
