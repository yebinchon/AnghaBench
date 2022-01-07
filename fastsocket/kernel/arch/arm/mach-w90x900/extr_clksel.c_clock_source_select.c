
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ATAOFFSET ;
 unsigned int AUDOFFSET ;
 unsigned int CPUOFFSET ;
 unsigned int LCDOFFSET ;
 unsigned int MSOFFSET ;
 int REG_CLKSEL ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void clock_source_select(const char *dev_id, unsigned int clkval)
{
 unsigned int clksel, offset;

 clksel = __raw_readl(REG_CLKSEL);

 if (strcmp(dev_id, "nuc900-ms") == 0)
  offset = MSOFFSET;
 else if (strcmp(dev_id, "nuc900-atapi") == 0)
  offset = ATAOFFSET;
 else if (strcmp(dev_id, "nuc900-lcd") == 0)
  offset = LCDOFFSET;
 else if (strcmp(dev_id, "nuc900-audio") == 0)
  offset = AUDOFFSET;
 else
  offset = CPUOFFSET;

 clksel &= ~(0x03 << offset);
 clksel |= (clkval << offset);

 __raw_writel(clksel, REG_CLKSEL);
}
