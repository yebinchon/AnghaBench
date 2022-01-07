
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSMC_PATT (int ) ;
 int FSMC_PCR (int ) ;
 int FSMC_PMEM (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int nhk8815_nand_init(void)
{

 writel(0x0000000E, FSMC_PCR(0));
 writel(0x000D0A00, FSMC_PMEM(0));
 writel(0x00100A00, FSMC_PATT(0));


 writel(readl(FSMC_PCR(0)) | 0x04, FSMC_PCR(0));

 return 0;
}
