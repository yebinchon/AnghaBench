
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int n_sections; int unsupported; int plat_bus_err; int host_ctlr_err; int plat_specific_err; int pci_comp_err; int smbios_dev_err; int pci_bus_err; int sel_dev_err; int mem_dev_err; int proc_err; void* header; } ;
typedef TYPE_1__ slidx_table_t ;
struct TYPE_7__ {int guid; scalar_t__ len; } ;
typedef TYPE_2__ sal_log_section_hdr_t ;
struct TYPE_8__ {int len; } ;
typedef TYPE_3__ sal_log_record_header_t ;


 int INIT_LIST_HEAD (int *) ;
 int LOG_INDEX_ADD_SECT_PTR (int ,TYPE_2__*) ;
 int SAL_PLAT_BUS_ERR_SECT_GUID ;
 int SAL_PLAT_HOST_CTLR_ERR_SECT_GUID ;
 int SAL_PLAT_MEM_DEV_ERR_SECT_GUID ;
 int SAL_PLAT_PCI_BUS_ERR_SECT_GUID ;
 int SAL_PLAT_PCI_COMP_ERR_SECT_GUID ;
 int SAL_PLAT_SEL_DEV_ERR_SECT_GUID ;
 int SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID ;
 int SAL_PLAT_SPECIFIC_ERR_SECT_GUID ;
 int SAL_PROC_DEV_ERR_SECT_GUID ;
 int efi_guidcmp (int ,int ) ;

__attribute__((used)) static int
mca_make_slidx(void *buffer, slidx_table_t *slidx)
{
 int platform_err = 0;
 int record_len = ((sal_log_record_header_t*)buffer)->len;
 u32 ercd_pos;
 int sects;
 sal_log_section_hdr_t *sp;




 INIT_LIST_HEAD(&(slidx->proc_err));
 INIT_LIST_HEAD(&(slidx->mem_dev_err));
 INIT_LIST_HEAD(&(slidx->sel_dev_err));
 INIT_LIST_HEAD(&(slidx->pci_bus_err));
 INIT_LIST_HEAD(&(slidx->smbios_dev_err));
 INIT_LIST_HEAD(&(slidx->pci_comp_err));
 INIT_LIST_HEAD(&(slidx->plat_specific_err));
 INIT_LIST_HEAD(&(slidx->host_ctlr_err));
 INIT_LIST_HEAD(&(slidx->plat_bus_err));
 INIT_LIST_HEAD(&(slidx->unsupported));




 slidx->header = buffer;





 for (ercd_pos = sizeof(sal_log_record_header_t), sects = 0;
  ercd_pos < record_len; ercd_pos += sp->len, sects++) {
  sp = (sal_log_section_hdr_t *)((char*)buffer + ercd_pos);
  if (!efi_guidcmp(sp->guid, SAL_PROC_DEV_ERR_SECT_GUID)) {
   LOG_INDEX_ADD_SECT_PTR(slidx->proc_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_MEM_DEV_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->mem_dev_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_SEL_DEV_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->sel_dev_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_PCI_BUS_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->pci_bus_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_SMBIOS_DEV_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->smbios_dev_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_PCI_COMP_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->pci_comp_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_SPECIFIC_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->plat_specific_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_HOST_CTLR_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->host_ctlr_err, sp);
  } else if (!efi_guidcmp(sp->guid,
    SAL_PLAT_BUS_ERR_SECT_GUID)) {
   platform_err = 1;
   LOG_INDEX_ADD_SECT_PTR(slidx->plat_bus_err, sp);
  } else {
   LOG_INDEX_ADD_SECT_PTR(slidx->unsupported, sp);
  }
 }
 slidx->n_sections = sects;

 return platform_err;
}
