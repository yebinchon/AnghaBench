
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int EXT ;
 unsigned int OTHER ;
 unsigned int PLL0 ;
 unsigned int PLL1 ;
 int clksel_sem ;
 int clock_source_select (char const*,unsigned int) ;
 char* dev_name (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (unsigned char*,char*) ;

void nuc900_clock_source(struct device *dev, unsigned char *src)
{
 unsigned int clkval;
 const char *dev_id;

 BUG_ON(!src);
 clkval = 0;

 mutex_lock(&clksel_sem);

 if (dev)
  dev_id = dev_name(dev);
 else
  dev_id = "cpufreq";

 if (strcmp(src, "pll0") == 0)
  clkval = PLL0;
 else if (strcmp(src, "pll1") == 0)
  clkval = PLL1;
 else if (strcmp(src, "ext") == 0)
  clkval = EXT;
 else if (strcmp(src, "oth") == 0)
  clkval = OTHER;

 clock_source_select(dev_id, clkval);

 mutex_unlock(&clksel_sem);
}
