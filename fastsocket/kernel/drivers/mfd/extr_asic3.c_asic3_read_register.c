
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asic3 {unsigned int bus_shift; scalar_t__ mapping; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static inline u32 asic3_read_register(struct asic3 *asic,
          unsigned int reg)
{
 return ioread16(asic->mapping +
   (reg >> asic->bus_shift));
}
