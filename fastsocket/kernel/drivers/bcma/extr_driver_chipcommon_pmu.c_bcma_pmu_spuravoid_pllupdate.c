
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PLLCTL_ADDR ;
 int BCMA_CC_PLLCTL_DATA ;
 int BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK ;
 int BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT ;
 int BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK ;
 int BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT ;
 int BCMA_CC_PMU_CTL ;
 int BCMA_CC_PMU_PLL_CTL0 ;
 int BCMA_CC_PMU_PLL_CTL1 ;
 int BCMA_CC_PMU_PLL_CTL2 ;
 int BCMA_CC_PMU_PLL_CTL3 ;
 int BCMA_CC_PMU_PLL_CTL4 ;
 int BCMA_CC_PMU_PLL_CTL5 ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;
 int bcma_err (struct bcma_bus*,char*,int const) ;
 int bcma_pmu_spuravoid_pll_write (struct bcma_drv_cc*,int,int) ;

void bcma_pmu_spuravoid_pllupdate(struct bcma_drv_cc *cc, int spuravoid)
{
 u32 tmp = 0;
 u8 phypll_offset = 0;
 u8 bcm5357_bcm43236_p1div[] = {0x1, 0x5, 0x5};
 u8 bcm5357_bcm43236_ndiv[] = {0x30, 0xf6, 0xfc};
 struct bcma_bus *bus = cc->core->bus;

 switch (bus->chipinfo.id) {
 case 129:
 case 130:
 case 128:




  phypll_offset = (bus->chipinfo.id == 129 ||
         bus->chipinfo.id == 130 ||
         bus->chipinfo.id == 128) ? 6 : 0;


  bcma_cc_write32(cc, BCMA_CC_PLLCTL_ADDR,
    BCMA_CC_PMU_PLL_CTL0 + phypll_offset);
  tmp = bcma_cc_read32(cc, BCMA_CC_PLLCTL_DATA);
  tmp &= (~(BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK));
  tmp |= (bcm5357_bcm43236_p1div[spuravoid] << BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT);
  bcma_cc_write32(cc, BCMA_CC_PLLCTL_DATA, tmp);


  bcma_cc_write32(cc, BCMA_CC_PLLCTL_ADDR,
    BCMA_CC_PMU_PLL_CTL2 + phypll_offset);
  tmp = bcma_cc_read32(cc, BCMA_CC_PLLCTL_DATA);
  tmp &= ~(BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK);
  tmp |= (bcm5357_bcm43236_ndiv[spuravoid]) << BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT;
  bcma_cc_write32(cc, BCMA_CC_PLLCTL_DATA, tmp);

  tmp = 1 << 10;
  break;

 case 137:
 case 134:
  if (spuravoid == 2) {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11500014);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x0FC00a08);
  } else if (spuravoid == 1) {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11500014);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x0F600a08);
  } else {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11100014);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x03000a08);
  }
  tmp = 1 << 10;
  break;

 case 141:
 case 140:
 case 136:
  if (spuravoid == 1) {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11500010);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x000C0C06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x0F600a08);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x2001E920);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  } else {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11100010);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x000c0c06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x03000a08);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x200005c0);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  }
  tmp = 1 << 10;
  break;

 case 133:
 case 131:
 case 132:
  if (spuravoid == 1) {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11500060);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x080C0C06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x0F600000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x2001E924);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  } else {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11100060);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x080c0c06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x03000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x200005c0);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  }

  tmp = 3 << 9;
  break;

 case 139:
 case 138:
 case 135:



  if (spuravoid == 1) {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x01100014);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x040C0C06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x03140A08);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00333333);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x202C2820);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  } else {
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL0,
           0x11100014);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL1,
           0x040c0c06);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL2,
           0x03000a08);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL3,
           0x00000000);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL4,
           0x200005c0);
   bcma_pmu_spuravoid_pll_write(cc, BCMA_CC_PMU_PLL_CTL5,
           0x88888815);
  }
  tmp = 1 << 10;
  break;
 default:
  bcma_err(bus, "Unknown spuravoidance settings for chip 0x%04X, not changing PLL\n",
    bus->chipinfo.id);
  break;
 }

 tmp |= bcma_cc_read32(cc, BCMA_CC_PMU_CTL);
 bcma_cc_write32(cc, BCMA_CC_PMU_CTL, tmp);
}
