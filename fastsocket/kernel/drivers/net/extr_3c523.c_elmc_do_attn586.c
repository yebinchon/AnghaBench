
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY_16 () ;
 scalar_t__ ELMC_CTRL ;
 int ELMC_CTRL_CA ;
 int ELMC_CTRL_RST ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void elmc_do_attn586(int ioaddr, int ints)
{
 outb(ELMC_CTRL_RST | 0x3 | ELMC_CTRL_CA | ints, ioaddr + ELMC_CTRL);
 DELAY_16();
 outb(ELMC_CTRL_RST | 0x3 | ints, ioaddr + ELMC_CTRL);
}
