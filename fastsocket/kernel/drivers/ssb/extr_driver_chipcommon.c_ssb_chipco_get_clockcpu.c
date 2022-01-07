
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int capabilities; } ;


 int SSB_CHIPCO_CAP_PLLT ;
 int SSB_CHIPCO_CLOCK_M2 ;
 int SSB_CHIPCO_CLOCK_MIPS ;
 int SSB_CHIPCO_CLOCK_N ;
 int SSB_CHIPCO_CLOCK_SB ;





 int chipco_read32 (struct ssb_chipcommon*,int ) ;

void ssb_chipco_get_clockcpu(struct ssb_chipcommon *cc,
                             u32 *plltype, u32 *n, u32 *m)
{
 *n = chipco_read32(cc, SSB_CHIPCO_CLOCK_N);
 *plltype = (cc->capabilities & SSB_CHIPCO_CAP_PLLT);
 switch (*plltype) {
 case 132:
 case 130:
 case 129:
 case 128:
  *m = chipco_read32(cc, SSB_CHIPCO_CLOCK_MIPS);
  break;
 case 131:

  *m = chipco_read32(cc, SSB_CHIPCO_CLOCK_M2);
  break;
 default:
  *m = chipco_read32(cc, SSB_CHIPCO_CLOCK_SB);
  break;
 }
}
