
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int id; int rev; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CCTRL_4313_12MA_LED_DRIVE ;
 int BCMA_CCTRL_43224A0_12MA_LED_DRIVE ;
 int BCMA_CCTRL_43224B0_12MA_LED_DRIVE ;
 int BCMA_CCTRL_43224_GPIO_TOGGLE ;
 int BCMA_CC_CHIPCTL ;





 int bcma_cc_maskset32 (struct bcma_drv_cc*,int ,int ,int ) ;
 int bcma_chipco_bcm4331_ext_pa_lines_ctl (struct bcma_drv_cc*,int) ;
 int bcma_chipco_chipctl_maskset (struct bcma_drv_cc*,int ,int ,int ) ;
 int bcma_debug (struct bcma_bus*,char*,int) ;

__attribute__((used)) static void bcma_pmu_workarounds(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 switch (bus->chipinfo.id) {
 case 132:


  bcma_chipco_chipctl_maskset(cc, 0,
         ~BCMA_CCTRL_4313_12MA_LED_DRIVE,
         BCMA_CCTRL_4313_12MA_LED_DRIVE);
  break;
 case 130:
 case 128:

  bcma_chipco_bcm4331_ext_pa_lines_ctl(cc, 1);
  break;
 case 131:
 case 129:


  if (bus->chipinfo.rev == 0) {
   bcma_cc_maskset32(cc, BCMA_CC_CHIPCTL,
       ~BCMA_CCTRL_43224_GPIO_TOGGLE,
       BCMA_CCTRL_43224_GPIO_TOGGLE);
   bcma_chipco_chipctl_maskset(cc, 0,
          ~BCMA_CCTRL_43224A0_12MA_LED_DRIVE,
          BCMA_CCTRL_43224A0_12MA_LED_DRIVE);
  } else {
   bcma_chipco_chipctl_maskset(cc, 0,
          ~BCMA_CCTRL_43224B0_12MA_LED_DRIVE,
          BCMA_CCTRL_43224B0_12MA_LED_DRIVE);
  }
  break;
 default:
  bcma_debug(bus, "Workarounds unknown or not needed for device 0x%04X\n",
      bus->chipinfo.id);
 }
}
