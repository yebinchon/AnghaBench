
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct s6gmac {scalar_t__ reg; } ;


 scalar_t__ S6_GMAC_STATCARRY (int) ;
 int s6gmac_stats_carry (struct s6gmac*,int *,scalar_t__) ;
 scalar_t__ s6gmac_stats_pending (struct s6gmac*,int) ;
 int ** statinf ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void s6gmac_stats_interrupt(struct s6gmac *pd, int carry)
{
 u32 mask;
 mask = s6gmac_stats_pending(pd, carry);
 if (mask) {
  writel(mask, pd->reg + S6_GMAC_STATCARRY(carry));
  s6gmac_stats_carry(pd, &statinf[carry][0], mask);
 }
}
