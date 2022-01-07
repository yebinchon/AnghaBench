
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct slot {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int pci_dev; int pcix_misc2_reg; } ;


 int PCIX_MISCII_OFFSET ;
 int PERRFATALENABLE_MASK ;
 int PERRFLOODENABLE_MASK ;
 int PERRNONFATALENABLE_MASK ;
 int SERRFATALENABLE_MASK ;
 int SERRNONFATALENABLE_MASK ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static inline void amd_pogo_errata_save_misc_reg(struct slot *p_slot)
{
 u32 pcix_misc2_temp;


 pci_read_config_dword(p_slot->ctrl->pci_dev, PCIX_MISCII_OFFSET, &pcix_misc2_temp);

 p_slot->ctrl->pcix_misc2_reg = pcix_misc2_temp;


 pcix_misc2_temp &= ~SERRFATALENABLE_MASK;
 pcix_misc2_temp &= ~SERRNONFATALENABLE_MASK;
 pcix_misc2_temp &= ~PERRFLOODENABLE_MASK;
 pcix_misc2_temp &= ~PERRFATALENABLE_MASK;
 pcix_misc2_temp &= ~PERRNONFATALENABLE_MASK;
 pci_write_config_dword(p_slot->ctrl->pci_dev, PCIX_MISCII_OFFSET, pcix_misc2_temp);
}
