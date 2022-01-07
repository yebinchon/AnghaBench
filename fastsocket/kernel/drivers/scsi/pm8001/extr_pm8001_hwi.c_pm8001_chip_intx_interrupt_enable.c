
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_hba_info {int dummy; } ;


 int MSGU_ODCR ;
 int MSGU_ODMR ;
 int ODCR_CLEAR_ALL ;
 int ODMR_CLEAR_ALL ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int ) ;

__attribute__((used)) static void
pm8001_chip_intx_interrupt_enable(struct pm8001_hba_info *pm8001_ha)
{
 pm8001_cw32(pm8001_ha, 0, MSGU_ODMR, ODMR_CLEAR_ALL);
 pm8001_cw32(pm8001_ha, 0, MSGU_ODCR, ODCR_CLEAR_ALL);
}
