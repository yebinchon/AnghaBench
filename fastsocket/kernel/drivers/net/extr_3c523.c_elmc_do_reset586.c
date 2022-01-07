
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY_16 () ;
 scalar_t__ ELMC_CTRL ;
 int ELMC_CTRL_LBK ;
 int ELMC_CTRL_RST ;
 int elmc_do_attn586 (int,int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void elmc_do_reset586(int ioaddr, int ints)
{

 outb(0x3 | ELMC_CTRL_LBK, ioaddr + ELMC_CTRL);
 DELAY_16();
 outb(ELMC_CTRL_RST | ELMC_CTRL_LBK | 0x3, ioaddr + ELMC_CTRL);

 elmc_do_attn586(ioaddr, ints);
}
