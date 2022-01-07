
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CSC_CLKSET ;
 int PCLKDIV (unsigned int) ;
 int hclkfreq_get () ;

unsigned int pclkfreq_get (void)
{
 unsigned int clkset = CSC_CLKSET;
 int pclkdiv = PCLKDIV(clkset);
 unsigned int pclk;
 if (pclkdiv == 0x3)
  pclkdiv = 0x2;
 pclk = hclkfreq_get () / (1 << pclkdiv);

 return pclk;
}
