
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int IORESOURCE_IO ;
 unsigned int IORESOURCE_MEM ;

__attribute__((used)) static unsigned int of_bus_isa_get_flags(const u32 *addr)
{
 unsigned int flags = 0;
 u32 w = addr[0];

 if (w & 1)
  flags |= IORESOURCE_IO;
 else
  flags |= IORESOURCE_MEM;
 return flags;
}
