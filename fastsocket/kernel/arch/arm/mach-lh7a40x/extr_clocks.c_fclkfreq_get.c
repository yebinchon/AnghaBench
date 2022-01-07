
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CSC_CLKSET ;
 int MAINDIV1 (unsigned int) ;
 int MAINDIV2 (unsigned int) ;
 int PREDIV (unsigned int) ;
 int PS (unsigned int) ;
 int XTAL_IN ;

unsigned int fclkfreq_get (void)
{
 unsigned int clkset = CSC_CLKSET;
 unsigned int gclk
  = XTAL_IN
  / (1 << PS(clkset))
  * (MAINDIV1(clkset) + 2)
  / (PREDIV(clkset) + 2)
  * (MAINDIV2(clkset) + 2)
  ;
 return gclk;
}
