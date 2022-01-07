
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gsc_writel (int,unsigned long) ;
 int lasi_power_off_hpa ;

__attribute__((used)) static void lasi_power_off(void)
{
 unsigned long datareg;


 datareg = lasi_power_off_hpa + 0x0000C000;


 gsc_writel(0x02, datareg);
}
