
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PMU_MAXRES_MSK ;
 int BCMA_CC_PMU_MINRES_MSK ;

 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;
 int bcma_debug (struct bcma_bus*,char*,int) ;
 int mdelay (int) ;

__attribute__((used)) static void bcma_pmu_resources_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 min_msk = 0, max_msk = 0;

 switch (bus->chipinfo.id) {
 case 128:
  min_msk = 0x200D;
  max_msk = 0xFFFF;
  break;
 default:
  bcma_debug(bus, "PMU resource config unknown or not needed for device 0x%04X\n",
      bus->chipinfo.id);
 }


 if (min_msk)
  bcma_cc_write32(cc, BCMA_CC_PMU_MINRES_MSK, min_msk);
 if (max_msk)
  bcma_cc_write32(cc, BCMA_CC_PMU_MAXRES_MSK, max_msk);





 mdelay(2);
}
