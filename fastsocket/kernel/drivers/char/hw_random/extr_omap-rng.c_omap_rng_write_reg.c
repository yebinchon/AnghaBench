
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ rng_base ;

__attribute__((used)) static inline void omap_rng_write_reg(int reg, u32 val)
{
 __raw_writel(val, rng_base + reg);
}
