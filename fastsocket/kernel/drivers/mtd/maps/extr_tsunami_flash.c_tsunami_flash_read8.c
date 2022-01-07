
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int tsunami_tig_readb (unsigned long) ;

__attribute__((used)) static inline map_word tsunami_flash_read8(struct map_info *map, unsigned long offset)
{
 map_word val;
 val.x[0] = tsunami_tig_readb(offset);
 return val;
}
