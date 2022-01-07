
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int DCRN_MQ0_B0BAS ;
 int DCRN_MQ0_B1BAS ;
 int DCRN_MQ0_B2BAS ;
 int DCRN_MQ0_B3BAS ;
 int dt_fixup_memory (int ,scalar_t__) ;
 scalar_t__ ibm440spe_decode_bas (int ) ;
 int mfdcr (int ) ;

void ibm440spe_fixup_memsize(void)
{
 u64 banktop, memsize = 0;




 banktop = ibm440spe_decode_bas(mfdcr(DCRN_MQ0_B0BAS));
 if (banktop > memsize)
  memsize = banktop;
 banktop = ibm440spe_decode_bas(mfdcr(DCRN_MQ0_B1BAS));
 if (banktop > memsize)
  memsize = banktop;
 banktop = ibm440spe_decode_bas(mfdcr(DCRN_MQ0_B2BAS));
 if (banktop > memsize)
  memsize = banktop;
 banktop = ibm440spe_decode_bas(mfdcr(DCRN_MQ0_B3BAS));
 if (banktop > memsize)
  memsize = banktop;

 dt_fixup_memory(0, memsize);
}
