
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct va1j5jf8007s_cb_map {scalar_t__ frequency; int cb; } ;


 int ARRAY_SIZE (struct va1j5jf8007s_cb_map*) ;
 struct va1j5jf8007s_cb_map* va1j5jf8007s_cb_maps ;

__attribute__((used)) static u8 va1j5jf8007s_lookup_cb(u32 frequency)
{
 int i;
 const struct va1j5jf8007s_cb_map *map;

 for (i = 0; i < ARRAY_SIZE(va1j5jf8007s_cb_maps); i++) {
  map = &va1j5jf8007s_cb_maps[i];
  if (frequency < map->frequency)
   return map->cb;
 }
 return 0xc0;
}
