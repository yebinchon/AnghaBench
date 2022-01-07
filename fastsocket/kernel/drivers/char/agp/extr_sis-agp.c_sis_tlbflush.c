
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int SIS_TLBFLUSH ;
 TYPE_1__* agp_bridge ;
 int pci_write_config_byte (int ,int ,int) ;

__attribute__((used)) static void sis_tlbflush(struct agp_memory *mem)
{
 pci_write_config_byte(agp_bridge->dev, SIS_TLBFLUSH, 0x02);
}
