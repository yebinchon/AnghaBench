
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_PLLCTL_ADDR ;
 int SSB_CHIPCO_PLLCTL_DATA ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int ) ;

__attribute__((used)) static void ssb_chipco_pll_write(struct ssb_chipcommon *cc,
     u32 offset, u32 value)
{
 chipco_write32(cc, SSB_CHIPCO_PLLCTL_ADDR, offset);
 chipco_write32(cc, SSB_CHIPCO_PLLCTL_DATA, value);
}
