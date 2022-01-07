
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_hba_info {int dummy; } ;


 int MSGU_ODMR_CLR ;
 int ODMR_MASK_ALL ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int ) ;

__attribute__((used)) static void
pm80xx_chip_intx_interrupt_disable(struct pm8001_hba_info *pm8001_ha)
{
 pm8001_cw32(pm8001_ha, 0, MSGU_ODMR_CLR, ODMR_MASK_ALL);
}
