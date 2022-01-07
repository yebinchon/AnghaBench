
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct chip_probe {scalar_t__ (* probe_chip ) (struct map_info*,int ,int *,struct cfi_private*) ;} ;
struct cfi_private {int interleave; int device_type; } ;


 int CFI_DEVICETYPE_X32 ;
 int cfi_interleave_supported (int) ;
 int map_bankwidth (struct map_info*) ;
 scalar_t__ stub1 (struct map_info*,int ,int *,struct cfi_private*) ;

__attribute__((used)) static int genprobe_new_chip(struct map_info *map, struct chip_probe *cp,
        struct cfi_private *cfi)
{
 int min_chips = (map_bankwidth(map)/4?:1);
 int max_chips = map_bankwidth(map);
 int nr_chips, type;

 for (nr_chips = max_chips; nr_chips >= min_chips; nr_chips >>= 1) {

  if (!cfi_interleave_supported(nr_chips))
      continue;

  cfi->interleave = nr_chips;



  type = map_bankwidth(map) / nr_chips;

  for (; type <= CFI_DEVICETYPE_X32; type<<=1) {
   cfi->device_type = type;

   if (cp->probe_chip(map, 0, ((void*)0), cfi))
    return 1;
  }
 }
 return 0;
}
