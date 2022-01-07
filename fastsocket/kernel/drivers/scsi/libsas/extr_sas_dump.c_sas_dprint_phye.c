
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum phy_event { ____Placeholder_phy_event } phy_event ;


 int SAS_DPRINTK (char*,int,int ) ;
 int * sas_phye_str ;

void sas_dprint_phye(int phyid, enum phy_event pe)
{
 SAS_DPRINTK("phy%d: phy event: %s\n", phyid, sas_phye_str[pe]);
}
