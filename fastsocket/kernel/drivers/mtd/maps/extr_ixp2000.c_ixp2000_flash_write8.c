
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ map_priv_1; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;
typedef int __u8 ;


 scalar_t__ address_fix8_write (scalar_t__) ;
 scalar_t__ flash_bank_setup (struct map_info*,unsigned long) ;

__attribute__((used)) static void ixp2000_flash_write8(struct map_info *map, map_word d, unsigned long ofs)
{
 *(__u8 *) (address_fix8_write(map->map_priv_1 +
          flash_bank_setup(map, ofs))) = d.x[0];
}
