
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {TYPE_1__* dev; } ;
struct ssb_bus {int chip_id; } ;
typedef enum ssb_pmu_ldo_volt_id { ____Placeholder_ssb_pmu_ldo_volt_id } ssb_pmu_ldo_volt_id ;
struct TYPE_2__ {struct ssb_bus* bus; } ;






 int SSB_WARN_ON (int) ;
 int ssb_chipco_regctl_maskset (struct ssb_chipcommon*,int,int,int) ;

void ssb_pmu_set_ldo_voltage(struct ssb_chipcommon *cc,
        enum ssb_pmu_ldo_volt_id id, u32 voltage)
{
 struct ssb_bus *bus = cc->dev->bus;
 u32 addr, shift, mask;

 switch (bus->chip_id) {
 case 0x4328:
 case 0x5354:
  switch (id) {
  case 130:
   addr = 2;
   shift = 25;
   mask = 0xF;
   break;
  case 129:
   addr = 3;
   shift = 1;
   mask = 0xF;
   break;
  case 128:
   addr = 3;
   shift = 9;
   mask = 0xF;
   break;
  case 131:
   addr = 3;
   shift = 17;
   mask = 0x3F;
   break;
  default:
   SSB_WARN_ON(1);
   return;
  }
  break;
 case 0x4312:
  if (SSB_WARN_ON(id != 131))
   return;
  addr = 0;
  shift = 21;
  mask = 0x3F;
  break;
 default:
  return;
 }

 ssb_chipco_regctl_maskset(cc, addr, ~(mask << shift),
      (voltage & mask) << shift);
}
