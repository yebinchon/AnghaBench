
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_phy {int max_negotiated_speed; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;



enum sas_linkrate sci_phy_linkrate(struct isci_phy *iphy)
{
 return iphy->max_negotiated_speed;
}
