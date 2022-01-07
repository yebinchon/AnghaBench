
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {scalar_t__ reg; } ;


 int ETIME ;
 scalar_t__ S6_GMAC_MACMIIINDI ;
 scalar_t__ readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int s6mii_busy(struct s6gmac *pd, int tmo)
{
 while (readl(pd->reg + S6_GMAC_MACMIIINDI)) {
  if (--tmo == 0)
   return -ETIME;
  udelay(64);
 }
 return 0;
}
