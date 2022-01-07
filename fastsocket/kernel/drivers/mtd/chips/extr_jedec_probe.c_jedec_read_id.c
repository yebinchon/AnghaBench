
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long uint32_t ;
typedef unsigned long u32 ;
struct map_info {int dummy; } ;
struct cfi_private {int device_type; } ;
struct TYPE_3__ {unsigned long* x; } ;
typedef TYPE_1__ map_word ;


 unsigned long cfi_build_cmd_addr (int,struct map_info*,struct cfi_private*) ;
 TYPE_1__ map_read (struct map_info*,unsigned long) ;

__attribute__((used)) static inline u32 jedec_read_id(struct map_info *map, uint32_t base,
 struct cfi_private *cfi)
{
 map_word result;
 unsigned long mask;
 u32 ofs = cfi_build_cmd_addr(1, map, cfi);
 mask = (1 << (cfi->device_type * 8)) -1;
 result = map_read(map, base + ofs);
 return result.x[0] & mask;
}
