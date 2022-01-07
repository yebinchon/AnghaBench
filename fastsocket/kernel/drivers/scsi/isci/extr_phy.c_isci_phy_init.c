
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sci_oem_params {TYPE_2__* phys; } ;
struct TYPE_6__ {int enabled; int id; int linkrate; int oob_mode; int role; int type; scalar_t__ tproto; int iproto; int class; struct isci_phy* lldd_phy; int * ha; int * frame_rcvd; int * sas_addr; } ;
struct isci_phy {int frame_rcvd; TYPE_3__ sas_phy; int * sas_addr; } ;
struct isci_host {int sas_ha; struct sci_oem_params oem_parameters; } ;
typedef int sas_addr ;
typedef int __be64 ;
struct TYPE_4__ {int high; int low; } ;
struct TYPE_5__ {TYPE_1__ sas_address; } ;


 int OOB_NOT_CONNECTED ;
 int PHY_ROLE_INITIATOR ;
 int PHY_TYPE_PHYSICAL ;
 int SAS ;
 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PROTOCOL_ALL ;
 int cpu_to_be64 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

void isci_phy_init(struct isci_phy *iphy, struct isci_host *ihost, int index)
{
 struct sci_oem_params *oem = &ihost->oem_parameters;
 u64 sci_sas_addr;
 __be64 sas_addr;

 sci_sas_addr = oem->phys[index].sas_address.high;
 sci_sas_addr <<= 32;
 sci_sas_addr |= oem->phys[index].sas_address.low;
 sas_addr = cpu_to_be64(sci_sas_addr);
 memcpy(iphy->sas_addr, &sas_addr, sizeof(sas_addr));

 iphy->sas_phy.enabled = 0;
 iphy->sas_phy.id = index;
 iphy->sas_phy.sas_addr = &iphy->sas_addr[0];
 iphy->sas_phy.frame_rcvd = (u8 *)&iphy->frame_rcvd;
 iphy->sas_phy.ha = &ihost->sas_ha;
 iphy->sas_phy.lldd_phy = iphy;
 iphy->sas_phy.enabled = 1;
 iphy->sas_phy.class = SAS;
 iphy->sas_phy.iproto = SAS_PROTOCOL_ALL;
 iphy->sas_phy.tproto = 0;
 iphy->sas_phy.type = PHY_TYPE_PHYSICAL;
 iphy->sas_phy.role = PHY_ROLE_INITIATOR;
 iphy->sas_phy.oob_mode = OOB_NOT_CONNECTED;
 iphy->sas_phy.linkrate = SAS_LINK_RATE_UNKNOWN;
 memset(&iphy->frame_rcvd, 0, sizeof(iphy->frame_rcvd));
}
