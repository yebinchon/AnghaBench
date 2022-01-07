
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_bus {int sprom_size; scalar_t__ sprom_offset; scalar_t__ mmio; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static int sprom_do_read(struct ssb_bus *bus, u16 *sprom)
{
 int i;

 for (i = 0; i < bus->sprom_size; i++)
  sprom[i] = ioread16(bus->mmio + bus->sprom_offset + (i * 2));

 return 0;
}
