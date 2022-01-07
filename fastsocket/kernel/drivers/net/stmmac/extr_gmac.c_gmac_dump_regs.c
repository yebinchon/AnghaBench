
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,int,...) ;
 int readl (unsigned long) ;

__attribute__((used)) static void gmac_dump_regs(unsigned long ioaddr)
{
 int i;
 pr_info("\t----------------------------------------------\n"
        "\t  GMAC registers (base addr = 0x%8x)\n"
        "\t----------------------------------------------\n",
        (unsigned int)ioaddr);

 for (i = 0; i < 55; i++) {
  int offset = i * 4;
  pr_info("\tReg No. %d (offset 0x%x): 0x%08x\n", i,
         offset, readl(ioaddr + offset));
 }
 return;
}
