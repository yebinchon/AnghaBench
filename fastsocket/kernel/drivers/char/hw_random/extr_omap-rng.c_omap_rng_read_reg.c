
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (scalar_t__) ;
 scalar_t__ rng_base ;

__attribute__((used)) static inline u32 omap_rng_read_reg(int reg)
{
 return __raw_readl(rng_base + reg);
}
