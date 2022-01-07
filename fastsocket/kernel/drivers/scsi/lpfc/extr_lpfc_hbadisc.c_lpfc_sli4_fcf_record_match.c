
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct lpfc_hba {int dummy; } ;
struct lpfc_fcf_rec {scalar_t__ priority; int fabric_name; int switch_name; int mac_addr; int vlan_id; } ;
struct fcf_record {scalar_t__ fip_priority; } ;


 scalar_t__ LPFC_FCOE_IGNORE_VID ;
 int lpfc_fab_name_match (int ,struct fcf_record*) ;
 int lpfc_mac_addr_match (int ,struct fcf_record*) ;
 int lpfc_sw_name_match (int ,struct fcf_record*) ;
 int lpfc_vlan_id_match (int ,scalar_t__) ;

__attribute__((used)) static bool
lpfc_sli4_fcf_record_match(struct lpfc_hba *phba,
      struct lpfc_fcf_rec *fcf_rec,
      struct fcf_record *new_fcf_record,
      uint16_t new_vlan_id)
{
 if (new_vlan_id != LPFC_FCOE_IGNORE_VID)
  if (!lpfc_vlan_id_match(fcf_rec->vlan_id, new_vlan_id))
   return 0;
 if (!lpfc_mac_addr_match(fcf_rec->mac_addr, new_fcf_record))
  return 0;
 if (!lpfc_sw_name_match(fcf_rec->switch_name, new_fcf_record))
  return 0;
 if (!lpfc_fab_name_match(fcf_rec->fabric_name, new_fcf_record))
  return 0;
 if (fcf_rec->priority != new_fcf_record->fip_priority)
  return 0;
 return 1;
}
