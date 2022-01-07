
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fsl_usb2_phy_modes { ____Placeholder_fsl_usb2_phy_modes } fsl_usb2_phy_modes ;


 int FSL_USB2_PHY_NONE ;
 int FSL_USB2_PHY_SERIAL ;
 int FSL_USB2_PHY_ULPI ;
 int FSL_USB2_PHY_UTMI ;
 int FSL_USB2_PHY_UTMI_WIDE ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static enum fsl_usb2_phy_modes determine_usb_phy(const char *phy_type)
{
 if (!phy_type)
  return FSL_USB2_PHY_NONE;
 if (!strcasecmp(phy_type, "ulpi"))
  return FSL_USB2_PHY_ULPI;
 if (!strcasecmp(phy_type, "utmi"))
  return FSL_USB2_PHY_UTMI;
 if (!strcasecmp(phy_type, "utmi_wide"))
  return FSL_USB2_PHY_UTMI_WIDE;
 if (!strcasecmp(phy_type, "serial"))
  return FSL_USB2_PHY_SERIAL;

 return FSL_USB2_PHY_NONE;
}
