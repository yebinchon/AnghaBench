
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPLD_SPI ;
 int CPLD_SPI_SCLK ;
 int T_SKH ;
 int T_SKL ;
 int udelay (int ) ;

__attribute__((used)) static void pulse_clock (void)
{
 CPLD_SPI |= CPLD_SPI_SCLK;
 udelay (T_SKH);
 CPLD_SPI &= ~CPLD_SPI_SCLK;
 udelay (T_SKL);
}
