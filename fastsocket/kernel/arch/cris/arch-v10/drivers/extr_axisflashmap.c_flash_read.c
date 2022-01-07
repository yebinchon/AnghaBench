
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ map_priv_1; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;
typedef int flash_data ;



__attribute__((used)) static map_word flash_read(struct map_info *map, unsigned long ofs)
{
 map_word tmp;
 tmp.x[0] = *(flash_data *)(map->map_priv_1 + ofs);
 return tmp;
}
