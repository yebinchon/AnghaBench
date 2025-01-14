
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mbit; } ;
struct s6gmac {TYPE_1__ link; } ;


 scalar_t__ S6_GREG1_PLLSEL ;
 int S6_GREG1_PLLSEL_GMAC ;
 int S6_GREG1_PLLSEL_GMAC_125MHZ ;
 int S6_GREG1_PLLSEL_GMAC_2500KHZ ;
 int S6_GREG1_PLLSEL_GMAC_25MHZ ;
 int S6_GREG1_PLLSEL_GMAC_MASK ;
 scalar_t__ S6_REG_GREG1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s6gmac_set_rgmii_txclock(struct s6gmac *pd)
{
 u32 pllsel = readl(S6_REG_GREG1 + S6_GREG1_PLLSEL);
 pllsel &= ~(S6_GREG1_PLLSEL_GMAC_MASK << S6_GREG1_PLLSEL_GMAC);
 switch (pd->link.mbit) {
 case 10:
  pllsel |= S6_GREG1_PLLSEL_GMAC_2500KHZ << S6_GREG1_PLLSEL_GMAC;
  break;
 case 100:
  pllsel |= S6_GREG1_PLLSEL_GMAC_25MHZ << S6_GREG1_PLLSEL_GMAC;
  break;
 case 1000:
  pllsel |= S6_GREG1_PLLSEL_GMAC_125MHZ << S6_GREG1_PLLSEL_GMAC;
  break;
 default:
  return;
 }
 writel(pllsel, S6_REG_GREG1 + S6_GREG1_PLLSEL);
}
