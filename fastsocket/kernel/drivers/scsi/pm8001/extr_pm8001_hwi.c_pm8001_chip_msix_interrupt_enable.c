
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int MSGU_ODCR ;
 int MSIX_INTERRUPT_ENABLE ;
 scalar_t__ MSIX_TABLE_BASE ;
 int MSIX_TABLE_ELEMENT_SIZE ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int,int) ;

__attribute__((used)) static void
pm8001_chip_msix_interrupt_enable(struct pm8001_hba_info *pm8001_ha,
 u32 int_vec_idx)
{
 u32 msi_index;
 u32 value;
 msi_index = int_vec_idx * MSIX_TABLE_ELEMENT_SIZE;
 msi_index += MSIX_TABLE_BASE;
 pm8001_cw32(pm8001_ha, 0, msi_index, MSIX_INTERRUPT_ENABLE);
 value = (1 << int_vec_idx);
 pm8001_cw32(pm8001_ha, 0, MSGU_ODCR, value);

}
