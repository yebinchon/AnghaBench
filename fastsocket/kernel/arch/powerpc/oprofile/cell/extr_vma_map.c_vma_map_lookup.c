
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct vma_to_fileoffset_map {unsigned int vma; unsigned int size; unsigned int guard_val; unsigned int offset; scalar_t__ guard_ptr; struct vma_to_fileoffset_map* next; } ;
struct spu {scalar_t__ local_store; } ;



unsigned int
vma_map_lookup(struct vma_to_fileoffset_map *map, unsigned int vma,
        const struct spu *aSpu, int *grd_val)
{







 u32 offset = 0x10000000 + vma;
 u32 ovly_grd;

 for (; map; map = map->next) {
  if (vma < map->vma || vma >= map->vma + map->size)
   continue;

  if (map->guard_ptr) {
   ovly_grd = *(u32 *)(aSpu->local_store + map->guard_ptr);
   if (ovly_grd != map->guard_val)
    continue;
   *grd_val = ovly_grd;
  }
  offset = vma - map->vma + map->offset;
  break;
 }

 return offset;
}
