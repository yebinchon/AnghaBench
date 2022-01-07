
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_chipcommon {int capabilities; struct ssb_device* dev; } ;
struct ssb_bus {int dummy; } ;
typedef enum ssb_clkmode { ____Placeholder_ssb_clkmode } ssb_clkmode ;


 int SSB_CHIPCO_CAP_PCTL ;
 int SSB_CHIPCO_CAP_PMU ;
 int SSB_CHIPCO_SLOWCLKCTL ;
 int SSB_CHIPCO_SLOWCLKCTL_ENXTAL ;
 int SSB_CHIPCO_SLOWCLKCTL_FSLOW ;
 int SSB_CHIPCO_SLOWCLKCTL_IPLL ;
 int SSB_CHIPCO_SLOWCLKCTL_SRC ;
 int SSB_CHIPCO_SLOWCLKCTL_SRC_XTAL ;
 int SSB_CHIPCO_SYSCLKCTL ;
 int SSB_CHIPCO_SYSCLKCTL_FORCEHT ;



 int SSB_GPIO_XTAL ;
 int SSB_WARN_ON (int) ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;
 int ssb_pci_xtal (struct ssb_bus*,int ,int) ;

void ssb_chipco_set_clockmode(struct ssb_chipcommon *cc,
         enum ssb_clkmode mode)
{
 struct ssb_device *ccdev = cc->dev;
 struct ssb_bus *bus;
 u32 tmp;

 if (!ccdev)
  return;
 bus = ccdev->bus;


 if (ccdev->id.revision >= 10 && mode == 128)
  mode = 130;

 if (cc->capabilities & SSB_CHIPCO_CAP_PMU)
  return;
 SSB_WARN_ON(ccdev->id.revision >= 20);


 if (ccdev->id.revision < 6)
  return;


 if (ccdev->id.revision >= 10)
  return;

 if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
  return;

 switch (mode) {
 case 128:
  tmp = chipco_read32(cc, SSB_CHIPCO_SLOWCLKCTL);
  tmp |= SSB_CHIPCO_SLOWCLKCTL_FSLOW;
  chipco_write32(cc, SSB_CHIPCO_SLOWCLKCTL, tmp);
  break;
 case 129:
  if (ccdev->id.revision < 10) {
   ssb_pci_xtal(bus, SSB_GPIO_XTAL, 1);
   tmp = chipco_read32(cc, SSB_CHIPCO_SLOWCLKCTL);
   tmp &= ~SSB_CHIPCO_SLOWCLKCTL_FSLOW;
   tmp |= SSB_CHIPCO_SLOWCLKCTL_IPLL;
   chipco_write32(cc, SSB_CHIPCO_SLOWCLKCTL, tmp);
  } else {
   chipco_write32(cc, SSB_CHIPCO_SYSCLKCTL,
    (chipco_read32(cc, SSB_CHIPCO_SYSCLKCTL) |
     SSB_CHIPCO_SYSCLKCTL_FORCEHT));

  }
  break;
 case 130:
  if (ccdev->id.revision < 10) {
   tmp = chipco_read32(cc, SSB_CHIPCO_SLOWCLKCTL);
   tmp &= ~SSB_CHIPCO_SLOWCLKCTL_FSLOW;
   tmp &= ~SSB_CHIPCO_SLOWCLKCTL_IPLL;
   tmp &= ~SSB_CHIPCO_SLOWCLKCTL_ENXTAL;
   if ((tmp & SSB_CHIPCO_SLOWCLKCTL_SRC) !=
       SSB_CHIPCO_SLOWCLKCTL_SRC_XTAL)
    tmp |= SSB_CHIPCO_SLOWCLKCTL_ENXTAL;
   chipco_write32(cc, SSB_CHIPCO_SLOWCLKCTL, tmp);



   if (tmp & SSB_CHIPCO_SLOWCLKCTL_ENXTAL)
    ssb_pci_xtal(bus, SSB_GPIO_XTAL, 0);
  } else {
   chipco_write32(cc, SSB_CHIPCO_SYSCLKCTL,
    (chipco_read32(cc, SSB_CHIPCO_SYSCLKCTL) &
     ~SSB_CHIPCO_SYSCLKCTL_FORCEHT));
  }
  break;
 default:
  SSB_WARN_ON(1);
 }
}
