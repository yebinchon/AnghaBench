
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ map_priv_1; } ;
typedef int ssize_t ;
typedef int __u8 ;


 unsigned long flash_bank_setup (struct map_info*,unsigned long) ;

__attribute__((used)) static void ixp2000_flash_copy_from(struct map_info *map, void *to,
         unsigned long from, ssize_t len)
{
 from = flash_bank_setup(map, from);
 while(len--)
  *(__u8 *) to++ = *(__u8 *)(map->map_priv_1 + from++);
}
