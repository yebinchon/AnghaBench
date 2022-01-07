
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6gmac_statinf {size_t net_index; int reg_size; } ;
struct s6gmac {int* carry; } ;


 int fls (int) ;

__attribute__((used)) static void s6gmac_stats_carry(struct s6gmac *pd,
  const struct s6gmac_statinf *inf, u32 mask)
{
 int b;
 while (mask) {
  b = fls(mask) - 1;
  mask &= ~(1 << b);
  pd->carry[inf[b].net_index] += (1 << inf[b].reg_size);
 }
}
