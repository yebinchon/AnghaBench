
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int MSGU_ODR ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;

__attribute__((used)) static u32 pm8001_chip_is_our_interupt(struct pm8001_hba_info *pm8001_ha)
{
 u32 value;



 value = pm8001_cr32(pm8001_ha, 0, MSGU_ODR);
 if (value)
  return 1;
 return 0;

}
