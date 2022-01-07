
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int maximum_linkrate_hw; int maximum_linkrate; int minimum_linkrate_hw; int minimum_linkrate; int negotiated_linkrate; } ;
struct sas_identify_frame {int target_bits; int initiator_bits; int dev_type; } ;
struct sas_ha_struct {int (* notify_port_event ) (struct asd_sas_phy*,int ) ;} ;
struct TYPE_2__ {int target_port_protocols; int device_type; } ;
struct asd_sas_phy {int frame_rcvd_size; int linkrate; struct sas_phy* phy; } ;
struct pm8001_phy {int phy_type; int frame_rcvd_size; TYPE_1__ identify; scalar_t__ frame_rcvd; int maximum_linkrate; int minimum_linkrate; int phy_attached; struct asd_sas_phy sas_phy; } ;
struct pm8001_hba_info {struct sas_ha_struct* sas; struct pm8001_phy* phy; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int PORTE_BYTES_DMAED ;
 int PORT_TYPE_SAS ;
 int PORT_TYPE_SATA ;
 int SAS_LINK_RATE_1_5_GBPS ;
 int SAS_PROTOCOL_ALL ;
 int pm8001_printk (char*,int) ;
 int stub1 (struct asd_sas_phy*,int ) ;

void pm8001_bytes_dmaed(struct pm8001_hba_info *pm8001_ha, int i)
{
 struct pm8001_phy *phy = &pm8001_ha->phy[i];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct sas_ha_struct *sas_ha;
 if (!phy->phy_attached)
  return;

 sas_ha = pm8001_ha->sas;
 if (sas_phy->phy) {
  struct sas_phy *sphy = sas_phy->phy;
  sphy->negotiated_linkrate = sas_phy->linkrate;
  sphy->minimum_linkrate = phy->minimum_linkrate;
  sphy->minimum_linkrate_hw = SAS_LINK_RATE_1_5_GBPS;
  sphy->maximum_linkrate = phy->maximum_linkrate;
  sphy->maximum_linkrate_hw = phy->maximum_linkrate;
 }

 if (phy->phy_type & PORT_TYPE_SAS) {
  struct sas_identify_frame *id;
  id = (struct sas_identify_frame *)phy->frame_rcvd;
  id->dev_type = phy->identify.device_type;
  id->initiator_bits = SAS_PROTOCOL_ALL;
  id->target_bits = phy->identify.target_port_protocols;
 } else if (phy->phy_type & PORT_TYPE_SATA) {

 }
 PM8001_MSG_DBG(pm8001_ha, pm8001_printk("phy %d byte dmaded.\n", i));

 sas_phy->frame_rcvd_size = phy->frame_rcvd_size;
 pm8001_ha->sas->notify_port_event(sas_phy, PORTE_BYTES_DMAED);
}
