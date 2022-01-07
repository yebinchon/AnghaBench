
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6i2c_if {unsigned int reg; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void i2c_wr32(struct s6i2c_if *iface, unsigned n, u32 v)
{
 writel(v, iface->reg + (n));
}
