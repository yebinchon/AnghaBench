
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {scalar_t__ type; scalar_t__ rev; int aci_wlan_automatic; int aci_enable; int interfmode; int aci_hw_rssi; int gmode; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 scalar_t__ B43legacy_PHYTYPE_G ;




 int EINVAL ;
 int ENODEV ;
 int b43legacy_radio_interference_mitigation_disable (struct b43legacy_wldev*,int) ;
 int b43legacy_radio_interference_mitigation_enable (struct b43legacy_wldev*,int) ;

int b43legacy_radio_set_interference_mitigation(struct b43legacy_wldev *dev,
      int mode)
{
 struct b43legacy_phy *phy = &dev->phy;
 int currentmode;

 if ((phy->type != B43legacy_PHYTYPE_G) ||
     (phy->rev == 0) || (!phy->gmode))
  return -ENODEV;

 phy->aci_wlan_automatic = 0;
 switch (mode) {
 case 131:
  phy->aci_wlan_automatic = 1;
  if (phy->aci_enable)
   mode = 130;
  else
   mode = 129;
  break;
 case 129:
 case 128:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 currentmode = phy->interfmode;
 if (currentmode == mode)
  return 0;
 if (currentmode != 129)
  b43legacy_radio_interference_mitigation_disable(dev,
        currentmode);

 if (mode == 129) {
  phy->aci_enable = 0;
  phy->aci_hw_rssi = 0;
 } else
  b43legacy_radio_interference_mitigation_enable(dev, mode);
 phy->interfmode = mode;

 return 0;
}
