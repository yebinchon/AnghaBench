
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct acpi_hest_ia_machine_check {int num_hardware_banks; } ;
struct acpi_hest_ia_error_bank {int dummy; } ;
struct acpi_hest_ia_corrected {int num_hardware_banks; } ;
struct acpi_hest_header {size_t type; } ;


 size_t ACPI_HEST_TYPE_IA32_CHECK ;
 size_t ACPI_HEST_TYPE_IA32_CORRECTED_CHECK ;
 size_t ACPI_HEST_TYPE_RESERVED ;
 int BUG_ON (int) ;
 int* hest_esrc_len_tab ;

__attribute__((used)) static int hest_esrc_len(struct acpi_hest_header *hest_hdr)
{
 u16 hest_type = hest_hdr->type;
 int len;

 if (hest_type >= ACPI_HEST_TYPE_RESERVED)
  return 0;

 len = hest_esrc_len_tab[hest_type];

 if (hest_type == ACPI_HEST_TYPE_IA32_CORRECTED_CHECK) {
  struct acpi_hest_ia_corrected *cmc;
  cmc = (struct acpi_hest_ia_corrected *)hest_hdr;
  len = sizeof(*cmc) + cmc->num_hardware_banks *
   sizeof(struct acpi_hest_ia_error_bank);
 } else if (hest_type == ACPI_HEST_TYPE_IA32_CHECK) {
  struct acpi_hest_ia_machine_check *mc;
  mc = (struct acpi_hest_ia_machine_check *)hest_hdr;
  len = sizeof(*mc) + mc->num_hardware_banks *
   sizeof(struct acpi_hest_ia_error_bank);
 }
 BUG_ON(len == -1);

 return len;
}
