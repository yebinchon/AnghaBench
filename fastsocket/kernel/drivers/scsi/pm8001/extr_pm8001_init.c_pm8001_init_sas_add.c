
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct pm8001_ioctl_payload {int minor_function; int length; int* func_specific; scalar_t__ offset; } ;
struct pm8001_hba_info {scalar_t__ chip_id; int* sas_addr; TYPE_2__* phy; TYPE_1__* chip; int * nvmd_completion; int pdev; } ;
struct TYPE_6__ {int (* get_nvmd_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;
struct TYPE_5__ {int dev_sas_addr; } ;
struct TYPE_4__ {int n_phy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int GFP_KERNEL ;
 int PCI_DEVICE_ID ;
 TYPE_3__* PM8001_CHIP_DISP ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SAS_ADDR_SIZE ;
 scalar_t__ chip_8001 ;
 int completion ;
 int cpu_to_be64 (scalar_t__) ;
 int* kzalloc (int,int ) ;
 int memcpy (int*,int*,int ) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pm8001_printk (char*,int,int) ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void pm8001_init_sas_add(struct pm8001_hba_info *pm8001_ha)
{
 u8 i, j;
 for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
  pm8001_ha->phy[i].dev_sas_addr = 0x50010c600047f9d0ULL;
  pm8001_ha->phy[i].dev_sas_addr =
   cpu_to_be64((u64)
    (*(u64 *)&pm8001_ha->phy[i].dev_sas_addr));
 }
 memcpy(pm8001_ha->sas_addr, &pm8001_ha->phy[0].dev_sas_addr,
  SAS_ADDR_SIZE);

}
