
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct map_info {scalar_t__ virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 scalar_t__ machine_is_netwinder () ;
 int nw_en_write () ;

__attribute__((used)) static void dc21285_write32(struct map_info *map, const map_word d, unsigned long adr)
{
 if (machine_is_netwinder())
  nw_en_write();
 *(uint32_t*)(map->virt + adr) = d.x[0];
}
