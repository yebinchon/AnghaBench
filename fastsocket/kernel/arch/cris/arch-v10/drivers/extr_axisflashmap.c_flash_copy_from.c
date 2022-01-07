
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ map_priv_1; } ;
typedef int ssize_t ;


 int memcpy (void*,void*,int ) ;

__attribute__((used)) static void flash_copy_from(struct map_info *map, void *to,
       unsigned long from, ssize_t len)
{
 memcpy(to, (void *)(map->map_priv_1 + from), len);
}
