
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ map_priv_2; } ;



__attribute__((used)) static inline unsigned long flash_bank_setup(struct map_info *map, unsigned long ofs)
{
 unsigned long (*set_bank)(unsigned long) =
  (unsigned long(*)(unsigned long))map->map_priv_2;

 return (set_bank ? set_bank(ofs) : ofs);
}
