
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VLEV ;
 unsigned int bfin_read_PLL_LOCKCNT () ;
 unsigned int bfin_read_VR_CTL () ;
 int bfin_write_PLL_LOCKCNT (unsigned int) ;
 int bfin_write_VR_CTL (unsigned int) ;

__attribute__((used)) static void bfin_set_vlev(unsigned int vlev)
{
 unsigned pll_lcnt;

 pll_lcnt = bfin_read_PLL_LOCKCNT();

 bfin_write_PLL_LOCKCNT(1);
 bfin_write_VR_CTL((bfin_read_VR_CTL() & ~VLEV) | vlev);
 bfin_write_PLL_LOCKCNT(pll_lcnt);
}
