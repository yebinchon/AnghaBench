
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_5__ {int oem_data; } ;
struct TYPE_7__ {TYPE_1__ valid; } ;
typedef TYPE_3__ sal_log_plat_specific_err_info_t ;
struct TYPE_6__ {int oem_data; } ;
struct TYPE_8__ {TYPE_2__ valid; } ;
typedef TYPE_4__ sal_log_mem_dev_err_info_t ;
typedef int efi_guid_t ;


 int SAL_PLAT_MEM_DEV_ERR_SECT_GUID ;
 int SAL_PLAT_SPECIFIC_ERR_SECT_GUID ;
 scalar_t__ efi_guidcmp (int ,int ) ;
 int sn_platform_plat_specific_err_print (int const*,int **,scalar_t__*) ;
 int vfree (int *) ;

int sn_salinfo_platform_oemdata(const u8 *sect_header, u8 **oemdata, u64 *oemdata_size)
{
 efi_guid_t guid = *(efi_guid_t *)sect_header;
 int valid = 0;
 *oemdata_size = 0;
 vfree(*oemdata);
 *oemdata = ((void*)0);
 if (efi_guidcmp(guid, SAL_PLAT_SPECIFIC_ERR_SECT_GUID) == 0) {
  sal_log_plat_specific_err_info_t *psei = (sal_log_plat_specific_err_info_t *)sect_header;
  valid = psei->valid.oem_data;
 } else if (efi_guidcmp(guid, SAL_PLAT_MEM_DEV_ERR_SECT_GUID) == 0) {
  sal_log_mem_dev_err_info_t *mdei = (sal_log_mem_dev_err_info_t *)sect_header;
  valid = mdei->valid.oem_data;
 }
 if (valid)
  return sn_platform_plat_specific_err_print(sect_header, oemdata, oemdata_size);
 else
  return 0;
}
