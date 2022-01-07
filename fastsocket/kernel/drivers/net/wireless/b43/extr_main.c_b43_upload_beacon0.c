
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {struct b43_wl* wl; } ;
struct b43_wl {int beacon0_uploaded; } ;


 int B43_SHM_SH_BTL0 ;
 int B43_SHM_SH_BT_BASE0 ;
 int b43_write_beacon_template (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_upload_beacon0(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;

 if (wl->beacon0_uploaded)
  return;
 b43_write_beacon_template(dev, B43_SHM_SH_BT_BASE0, B43_SHM_SH_BTL0);
 wl->beacon0_uploaded = 1;
}
