
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int OCPI_PROT ;
 int OCPI_SEC ;
 int cpu_is_omap16xx () ;
 unsigned int omap_readl (int ) ;
 int omap_writel (unsigned int,int ) ;

int ocpi_enable(void)
{
 unsigned int val;

 if (!cpu_is_omap16xx())
  return -ENODEV;


 val = omap_readl(OCPI_PROT);
 val &= ~0xff;

 omap_writel(val, OCPI_PROT);

 val = omap_readl(OCPI_SEC);
 val &= ~0xff;
 omap_writel(val, OCPI_SEC);

 return 0;
}
