
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCRN_EBC0_CFGADDR ;
 int DCRN_EBC0_CFGDATA ;
 int EBC_BXCR (int) ;
 int EBC_BXCR_BANK_SIZE (int) ;
 int EBC_BXCR_BAS ;
 int EBC_BXCR_BU ;
 int EBC_BXCR_BU_OFF ;
 int EBC_NUM_BANKS ;
 int fatal (char*,char const*) ;
 void* finddevice (char const*) ;
 int mfdcr (int ) ;
 int mtdcr (int ,int ) ;
 int setprop (void*,char*,int*,int) ;

void ibm4xx_fixup_ebc_ranges(const char *ebc)
{
 void *devp;
 u32 bxcr;
 u32 ranges[EBC_NUM_BANKS*4];
 u32 *p = ranges;
 int i;

 for (i = 0; i < EBC_NUM_BANKS; i++) {
  mtdcr(DCRN_EBC0_CFGADDR, EBC_BXCR(i));
  bxcr = mfdcr(DCRN_EBC0_CFGDATA);

  if ((bxcr & EBC_BXCR_BU) != EBC_BXCR_BU_OFF) {
   *p++ = i;
   *p++ = 0;
   *p++ = bxcr & EBC_BXCR_BAS;
   *p++ = EBC_BXCR_BANK_SIZE(bxcr);
  }
 }

 devp = finddevice(ebc);
 if (! devp)
  fatal("Couldn't locate EBC node %s\n\r", ebc);

 setprop(devp, "ranges", ranges, (p - ranges) * sizeof(u32));
}
