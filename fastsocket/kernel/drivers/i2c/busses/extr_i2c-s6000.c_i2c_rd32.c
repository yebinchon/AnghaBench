
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6i2c_if {unsigned int reg; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 i2c_rd32(struct s6i2c_if *iface, unsigned n)
{
 return readl(iface->reg + (n));
}
