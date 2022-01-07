
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s6i2c_if {unsigned int reg; } ;


 int writew (int ,unsigned int) ;

__attribute__((used)) static inline void i2c_wr16(struct s6i2c_if *iface, unsigned n, u16 v)
{
 writew(v, iface->reg + (n));
}
