
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ virt; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int flash_read16 (scalar_t__) ;

__attribute__((used)) static map_word ixp4xx_read16(struct map_info *map, unsigned long ofs)
{
 map_word val;
 val.x[0] = flash_read16(map->virt + ofs);
 return val;
}
