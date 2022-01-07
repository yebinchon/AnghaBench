
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ BCMCPU_IS_6338 () ;
 scalar_t__ BCMCPU_IS_6345 () ;
 scalar_t__ BCMCPU_IS_6348 () ;
 scalar_t__ BCMCPU_IS_6358 () ;
 int MEMC_CFG_32B_MASK ;
 int MEMC_CFG_COL_MASK ;
 int MEMC_CFG_COL_SHIFT ;
 int MEMC_CFG_REG ;
 int MEMC_CFG_ROW_MASK ;
 int MEMC_CFG_ROW_SHIFT ;
 int SDRAM_CFG_32B_MASK ;
 int SDRAM_CFG_BANK_MASK ;
 int SDRAM_CFG_COL_MASK ;
 int SDRAM_CFG_COL_SHIFT ;
 int SDRAM_CFG_REG ;
 int SDRAM_CFG_ROW_MASK ;
 int SDRAM_CFG_ROW_SHIFT ;
 int bcm_memc_readl (int ) ;
 int bcm_sdram_readl (int ) ;

__attribute__((used)) static unsigned int detect_memory_size(void)
{
 unsigned int cols = 0, rows = 0, is_32bits = 0, banks = 0;
 u32 val;

 if (BCMCPU_IS_6345())
  return (8 * 1024 * 1024);

 if (BCMCPU_IS_6338() || BCMCPU_IS_6348()) {
  val = bcm_sdram_readl(SDRAM_CFG_REG);
  rows = (val & SDRAM_CFG_ROW_MASK) >> SDRAM_CFG_ROW_SHIFT;
  cols = (val & SDRAM_CFG_COL_MASK) >> SDRAM_CFG_COL_SHIFT;
  is_32bits = (val & SDRAM_CFG_32B_MASK) ? 1 : 0;
  banks = (val & SDRAM_CFG_BANK_MASK) ? 2 : 1;
 }

 if (BCMCPU_IS_6358()) {
  val = bcm_memc_readl(MEMC_CFG_REG);
  rows = (val & MEMC_CFG_ROW_MASK) >> MEMC_CFG_ROW_SHIFT;
  cols = (val & MEMC_CFG_COL_MASK) >> MEMC_CFG_COL_SHIFT;
  is_32bits = (val & MEMC_CFG_32B_MASK) ? 0 : 1;
  banks = 2;
 }


 rows += 11;


 cols += 8;

 return 1 << (cols + rows + (is_32bits + 1) + banks);
}
