
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct map_info {scalar_t__ map_priv_1; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 scalar_t__ flash_bank_setup (struct map_info*,unsigned long) ;

__attribute__((used)) static map_word ixp2000_flash_read8(struct map_info *map, unsigned long ofs)
{
 map_word val;

 val.x[0] = *((u8 *)(map->map_priv_1 + flash_bank_setup(map, ofs)));
 return val;
}
