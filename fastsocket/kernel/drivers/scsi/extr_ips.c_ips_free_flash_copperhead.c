
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * flash_data; int flash_busaddr; int flash_len; int pcidev; } ;
typedef TYPE_1__ ips_ha_t ;


 int * ips_FlashData ;
 int ips_FlashDataInUse ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
ips_free_flash_copperhead(ips_ha_t * ha)
{
 if (ha->flash_data == ips_FlashData)
  test_and_clear_bit(0, &ips_FlashDataInUse);
 else if (ha->flash_data)
  pci_free_consistent(ha->pcidev, ha->flash_len, ha->flash_data,
        ha->flash_busaddr);
 ha->flash_data = ((void*)0);
}
