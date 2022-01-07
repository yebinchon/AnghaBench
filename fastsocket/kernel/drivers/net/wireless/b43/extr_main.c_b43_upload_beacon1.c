
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {struct b43_wl* wl; } ;
struct b43_wl {int beacon1_uploaded; } ;


 int B43_SHM_SH_BTL1 ;
 int B43_SHM_SH_BT_BASE1 ;
 int b43_write_beacon_template (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_upload_beacon1(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;

 if (wl->beacon1_uploaded)
  return;
 b43_write_beacon_template(dev, B43_SHM_SH_BT_BASE1, B43_SHM_SH_BTL1);
 wl->beacon1_uploaded = 1;
}
