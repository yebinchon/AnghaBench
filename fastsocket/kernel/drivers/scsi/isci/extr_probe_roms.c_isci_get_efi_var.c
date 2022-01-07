
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_3__ {int signature; } ;
struct isci_orom {TYPE_1__ hdr; } ;
struct isci_oem_hdr {int sig; } ;
typedef scalar_t__ efi_status_t ;
struct TYPE_4__ {scalar_t__ (* get_variable ) (int ,int *,int *,unsigned long*,scalar_t__*) ;} ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int GFP_KERNEL ;
 int ISCI_EFI_VENDOR_GUID ;
 int ISCI_OEM_SIG ;
 int ISCI_OEM_SIG_SIZE ;
 int ISCI_ROM_SIG ;
 int ISCI_ROM_SIG_SIZE ;
 int dev_warn (int *,char*) ;
 scalar_t__* devm_kzalloc (int *,unsigned long,int ) ;
 TYPE_2__* get_efi () ;
 int isci_efivar_name ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ stub1 (int ,int *,int *,unsigned long*,scalar_t__*) ;

struct isci_orom *isci_get_efi_var(struct pci_dev *pdev)
{
 efi_status_t status;
 struct isci_orom *rom;
 struct isci_oem_hdr *oem_hdr;
 u8 *tmp, sum;
 int j;
 unsigned long data_len;
 u8 *efi_data;
 u32 efi_attrib = 0;

 data_len = 1024;
 efi_data = devm_kzalloc(&pdev->dev, data_len, GFP_KERNEL);
 if (!efi_data) {
  dev_warn(&pdev->dev,
    "Unable to allocate memory for EFI data\n");
  return ((void*)0);
 }

 rom = (struct isci_orom *)(efi_data + sizeof(struct isci_oem_hdr));

 if (get_efi())
  status = get_efi()->get_variable(isci_efivar_name,
       &ISCI_EFI_VENDOR_GUID,
       &efi_attrib,
       &data_len,
       efi_data);
 else
  status = EFI_NOT_FOUND;

 if (status != EFI_SUCCESS) {
  dev_warn(&pdev->dev,
    "Unable to obtain EFI var data for OEM parms\n");
  return ((void*)0);
 }

 oem_hdr = (struct isci_oem_hdr *)efi_data;

 if (memcmp(oem_hdr->sig, ISCI_OEM_SIG, ISCI_OEM_SIG_SIZE) != 0) {
  dev_warn(&pdev->dev,
    "Invalid OEM header signature\n");
  return ((void*)0);
 }


 tmp = (u8 *)efi_data;
 for (j = 0, sum = 0; j < (sizeof(*oem_hdr) + sizeof(*rom)); j++, tmp++)
  sum += *tmp;

 if (sum != 0) {
  dev_warn(&pdev->dev,
    "OEM table checksum failed\n");
  return ((void*)0);
 }

 if (memcmp(rom->hdr.signature,
     ISCI_ROM_SIG,
     ISCI_ROM_SIG_SIZE) != 0) {
  dev_warn(&pdev->dev,
    "Invalid OEM table signature\n");
  return ((void*)0);
 }

 return rom;
}
