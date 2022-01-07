
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {unsigned long map_priv_1; } ;
typedef scalar_t__ __u8 ;


 unsigned long WINDOW_SHIFT ;
 int __oct5066_page (struct map_info*,scalar_t__) ;
 scalar_t__ page_n_dev ;

__attribute__((used)) static inline void oct5066_page(struct map_info *map, unsigned long ofs)
{
 __u8 byte = map->map_priv_1 | (ofs >> WINDOW_SHIFT);

 if (page_n_dev != byte)
  __oct5066_page(map, byte);
}
