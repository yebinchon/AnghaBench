
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pm8001_hba_info {int int_vector; } ;
struct TYPE_2__ {int (* isr ) (struct pm8001_hba_info*,int ) ;} ;


 int BUG_ON (int) ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int stub1 (struct pm8001_hba_info*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pm8001_tasklet(unsigned long opaque)
{
 struct pm8001_hba_info *pm8001_ha;
 u32 vec;
 pm8001_ha = (struct pm8001_hba_info *)opaque;
 if (unlikely(!pm8001_ha))
  BUG_ON(1);
 vec = pm8001_ha->int_vector;
 PM8001_CHIP_DISP->isr(pm8001_ha, vec);
}
