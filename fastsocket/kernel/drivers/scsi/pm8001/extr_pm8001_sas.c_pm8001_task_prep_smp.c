
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {int dummy; } ;
struct pm8001_ccb_info {int dummy; } ;
struct TYPE_2__ {int (* smp_req ) (struct pm8001_hba_info*,struct pm8001_ccb_info*) ;} ;


 TYPE_1__* PM8001_CHIP_DISP ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_ccb_info*) ;

__attribute__((used)) static int pm8001_task_prep_smp(struct pm8001_hba_info *pm8001_ha,
 struct pm8001_ccb_info *ccb)
{
 return PM8001_CHIP_DISP->smp_req(pm8001_ha, ccb);
}
