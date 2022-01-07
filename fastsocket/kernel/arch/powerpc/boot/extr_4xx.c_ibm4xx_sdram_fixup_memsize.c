
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 unsigned long SDRAM0_READ (int ) ;
 unsigned long SDRAM_CONFIG_BANK_ENABLE ;
 scalar_t__ SDRAM_CONFIG_BANK_SIZE (unsigned long) ;
 unsigned long chip_11_errata (unsigned long) ;
 int dt_fixup_memory (int ,unsigned long) ;
 int * sdram_bxcr ;

void ibm4xx_sdram_fixup_memsize(void)
{
 int i;
 unsigned long memsize, bank_config;

 memsize = 0;
 for (i = 0; i < ARRAY_SIZE(sdram_bxcr); i++) {
  bank_config = SDRAM0_READ(sdram_bxcr[i]);
  if (bank_config & SDRAM_CONFIG_BANK_ENABLE)
   memsize += SDRAM_CONFIG_BANK_SIZE(bank_config);
 }

 memsize = chip_11_errata(memsize);
 dt_fixup_memory(0, memsize);
}
