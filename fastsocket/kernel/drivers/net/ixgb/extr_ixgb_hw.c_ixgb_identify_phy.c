
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgb_hw {int device_id; scalar_t__ subsystem_vendor_id; } ;
typedef int ixgb_xpak_vendor ;
typedef int ixgb_phy_type ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;




 scalar_t__ SUN_SUBVENDOR_ID ;
 int ixgb_identify_xpak_vendor (struct ixgb_hw*) ;
 int ixgb_phy_type_bcm ;
 int ixgb_phy_type_g6005 ;
 int ixgb_phy_type_g6104 ;
 int ixgb_phy_type_txn17201 ;
 int ixgb_phy_type_txn17401 ;
 int ixgb_phy_type_unknown ;
 int ixgb_xpak_vendor_intel ;

__attribute__((used)) static ixgb_phy_type
ixgb_identify_phy(struct ixgb_hw *hw)
{
 ixgb_phy_type phy_type;
 ixgb_xpak_vendor xpak_vendor;

 DEBUGFUNC("ixgb_identify_phy");


 switch (hw->device_id) {
 case 131:
  DEBUGOUT("Identified TXN17401 optics\n");
  phy_type = ixgb_phy_type_txn17401;
  break;

 case 128:



  xpak_vendor = ixgb_identify_xpak_vendor(hw);
  if (xpak_vendor == ixgb_xpak_vendor_intel) {
   DEBUGOUT("Identified TXN17201 optics\n");
   phy_type = ixgb_phy_type_txn17201;
  } else {
   DEBUGOUT("Identified G6005 optics\n");
   phy_type = ixgb_phy_type_g6005;
  }
  break;
 case 129:
  DEBUGOUT("Identified G6104 optics\n");
  phy_type = ixgb_phy_type_g6104;
  break;
 case 130:
  DEBUGOUT("Identified CX4\n");
  xpak_vendor = ixgb_identify_xpak_vendor(hw);
  if (xpak_vendor == ixgb_xpak_vendor_intel) {
   DEBUGOUT("Identified TXN17201 optics\n");
   phy_type = ixgb_phy_type_txn17201;
  } else {
   DEBUGOUT("Identified G6005 optics\n");
   phy_type = ixgb_phy_type_g6005;
  }
  break;
 default:
  DEBUGOUT("Unknown physical layer module\n");
  phy_type = ixgb_phy_type_unknown;
  break;
 }


 if (hw->subsystem_vendor_id == SUN_SUBVENDOR_ID)
  phy_type = ixgb_phy_type_bcm;

 return (phy_type);
}
