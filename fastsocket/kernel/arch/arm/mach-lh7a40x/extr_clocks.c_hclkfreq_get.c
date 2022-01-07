
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CSC_CLKSET ;
 int HCLKDIV (unsigned int) ;
 int fclkfreq_get () ;

unsigned int hclkfreq_get (void)
{
 unsigned int clkset = CSC_CLKSET;
 unsigned int hclk = fclkfreq_get () / (HCLKDIV(clkset) + 1);

 return hclk;
}
