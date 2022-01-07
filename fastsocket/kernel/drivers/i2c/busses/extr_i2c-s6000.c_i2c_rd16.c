
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s6i2c_if {unsigned int reg; } ;


 int readw (unsigned int) ;

__attribute__((used)) static inline u16 i2c_rd16(struct s6i2c_if *iface, unsigned n)
{
 return readw(iface->reg + (n));
}
