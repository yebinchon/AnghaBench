
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct beiscsi_hba {int ue_detected; int pcidev; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int KERN_ERR ;
 int PCICFG_UE_STATUS_HIGH ;
 int PCICFG_UE_STATUS_LOW ;
 int PCICFG_UE_STATUS_MASK_HI ;
 int PCICFG_UE_STATUS_MASK_LOW ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*,...) ;
 int * desc_ue_status_hi ;
 int * desc_ue_status_low ;
 int pci_read_config_dword (int ,int ,int*) ;

void beiscsi_ue_detect(struct beiscsi_hba *phba)
{
 uint32_t ue_hi = 0, ue_lo = 0;
 uint32_t ue_mask_hi = 0, ue_mask_lo = 0;
 uint8_t i = 0;

 if (phba->ue_detected)
  return;

 pci_read_config_dword(phba->pcidev,
         PCICFG_UE_STATUS_LOW, &ue_lo);
 pci_read_config_dword(phba->pcidev,
         PCICFG_UE_STATUS_MASK_LOW,
         &ue_mask_lo);
 pci_read_config_dword(phba->pcidev,
         PCICFG_UE_STATUS_HIGH,
         &ue_hi);
 pci_read_config_dword(phba->pcidev,
         PCICFG_UE_STATUS_MASK_HI,
         &ue_mask_hi);

 ue_lo = (ue_lo & ~ue_mask_lo);
 ue_hi = (ue_hi & ~ue_mask_hi);


 if (ue_lo || ue_hi) {
  phba->ue_detected = 1;
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BG_%d : Error detected on the adapter\n");
 }

 if (ue_lo) {
  for (i = 0; ue_lo; ue_lo >>= 1, i++) {
   if (ue_lo & 1)
    beiscsi_log(phba, KERN_ERR,
         BEISCSI_LOG_CONFIG,
         "BG_%d : UE_LOW %s bit set\n",
         desc_ue_status_low[i]);
  }
 }

 if (ue_hi) {
  for (i = 0; ue_hi; ue_hi >>= 1, i++) {
   if (ue_hi & 1)
    beiscsi_log(phba, KERN_ERR,
         BEISCSI_LOG_CONFIG,
         "BG_%d : UE_HIGH %s bit set\n",
         desc_ue_status_hi[i]);
  }
 }
}
