
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct agp_memory {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int INTEL_AGPCTRL ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void intel_8xx_tlbflush(struct agp_memory *mem)
{
 u32 temp;
 pci_read_config_dword(agp_bridge->dev, INTEL_AGPCTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, temp & ~(1 << 7));
 pci_read_config_dword(agp_bridge->dev, INTEL_AGPCTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, temp | (1 << 7));
}
