
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct map_info {scalar_t__ virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;



__attribute__((used)) static map_word dc21285_read8(struct map_info *map, unsigned long ofs)
{
 map_word val;
 val.x[0] = *(uint8_t*)(map->virt + ofs);
 return val;
}
