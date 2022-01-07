
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;
 int SAS_LINK_RATE_1_5_GBPS ;
 int SAS_LINK_RATE_3_0_GBPS ;
 int SAS_LINK_RATE_6_0_GBPS ;
 int SAS_LINK_RATE_FAILED ;
 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PHY_DISABLED ;
 int SAS_PHY_RESET_IN_PROGRESS ;
 int SAS_SATA_PORT_SELECTOR ;

__attribute__((used)) static enum sas_linkrate
_transport_convert_phy_link_rate(u8 link_rate)
{
 enum sas_linkrate rc;

 switch (link_rate) {
 case 136:
  rc = SAS_LINK_RATE_1_5_GBPS;
  break;
 case 135:
  rc = SAS_LINK_RATE_3_0_GBPS;
  break;
 case 134:
  rc = SAS_LINK_RATE_6_0_GBPS;
  break;
 case 132:
  rc = SAS_PHY_DISABLED;
  break;
 case 133:
  rc = SAS_LINK_RATE_FAILED;
  break;
 case 131:
  rc = SAS_SATA_PORT_SELECTOR;
  break;
 case 129:
  rc = SAS_PHY_RESET_IN_PROGRESS;
  break;
 default:
 case 130:
 case 128:
  rc = SAS_LINK_RATE_UNKNOWN;
  break;
 }
 return rc;
}
