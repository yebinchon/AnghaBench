
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_chipcommon {TYPE_1__* dev; } ;
struct ssb_bus {int chip_id; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;


 int SSB_CHIPCO_PMU_MINRES_MSK ;
 int SSB_PMURES_4312_PA_REF_LDO ;
 int SSB_PMURES_4328_PA_REF_LDO ;
 int SSB_PMURES_5354_PA_REF_LDO ;
 int chipco_mask32 (struct ssb_chipcommon*,int ,int) ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_set32 (struct ssb_chipcommon*,int ,int) ;

void ssb_pmu_set_ldo_paref(struct ssb_chipcommon *cc, bool on)
{
 struct ssb_bus *bus = cc->dev->bus;
 int ldo;

 switch (bus->chip_id) {
 case 0x4312:
  ldo = SSB_PMURES_4312_PA_REF_LDO;
  break;
 case 0x4328:
  ldo = SSB_PMURES_4328_PA_REF_LDO;
  break;
 case 0x5354:
  ldo = SSB_PMURES_5354_PA_REF_LDO;
  break;
 default:
  return;
 }

 if (on)
  chipco_set32(cc, SSB_CHIPCO_PMU_MINRES_MSK, 1 << ldo);
 else
  chipco_mask32(cc, SSB_CHIPCO_PMU_MINRES_MSK, ~(1 << ldo));
 chipco_read32(cc, SSB_CHIPCO_PMU_MINRES_MSK);
}
