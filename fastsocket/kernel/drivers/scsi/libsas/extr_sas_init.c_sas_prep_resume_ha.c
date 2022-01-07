
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int num_phys; struct asd_sas_phy** sas_phy; int state; } ;
struct asd_sas_phy {scalar_t__ frame_rcvd_size; scalar_t__ phy_events_pending; scalar_t__ port_events_pending; int attached_sas_addr; } ;


 int SAS_ADDR_SIZE ;
 int SAS_HA_REGISTERED ;
 int memset (int ,int ,int ) ;
 int set_bit (int ,int *) ;

void sas_prep_resume_ha(struct sas_ha_struct *ha)
{
 int i;

 set_bit(SAS_HA_REGISTERED, &ha->state);


 for (i = 0; i < ha->num_phys; i++) {
  struct asd_sas_phy *phy = ha->sas_phy[i];

  memset(phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
  phy->port_events_pending = 0;
  phy->phy_events_pending = 0;
  phy->frame_rcvd_size = 0;
 }
}
