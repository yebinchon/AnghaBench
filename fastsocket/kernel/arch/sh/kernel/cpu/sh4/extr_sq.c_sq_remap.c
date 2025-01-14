
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sq_mapping {unsigned long addr; unsigned int size; char const* name; unsigned long sq_addr; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 unsigned long P4SEG_STORE_QUE ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_KERNEL_NOCACHE ;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __sq_remap (struct sq_mapping*,unsigned long) ;
 int bitmap_find_free_region (int ,int,int ) ;
 int get_order (unsigned int) ;
 int high_memory ;
 struct sq_mapping* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct sq_mapping*) ;
 scalar_t__ likely (char const*) ;
 unsigned long pgprot_val (int ) ;
 int pr_info (char*,char*,unsigned int,char*,unsigned long,unsigned long) ;
 int sq_bitmap ;
 int sq_cache ;
 int sq_mapping_list_add (struct sq_mapping*) ;
 scalar_t__ unlikely (int) ;
 unsigned long virt_to_phys (int ) ;

unsigned long sq_remap(unsigned long phys, unsigned int size,
         const char *name, unsigned long flags)
{
 struct sq_mapping *map;
 unsigned long end;
 unsigned int psz;
 int ret, page;


 end = phys + size - 1;
 if (unlikely(!size || end < phys))
  return -EINVAL;

 if (unlikely(phys < virt_to_phys(high_memory)))
  return -EINVAL;

 phys &= PAGE_MASK;
 size = PAGE_ALIGN(end + 1) - phys;

 map = kmem_cache_alloc(sq_cache, GFP_KERNEL);
 if (unlikely(!map))
  return -ENOMEM;

 map->addr = phys;
 map->size = size;
 map->name = name;

 page = bitmap_find_free_region(sq_bitmap, 0x04000000 >> PAGE_SHIFT,
           get_order(map->size));
 if (unlikely(page < 0)) {
  ret = -ENOSPC;
  goto out;
 }

 map->sq_addr = P4SEG_STORE_QUE + (page << PAGE_SHIFT);

 ret = __sq_remap(map, pgprot_val(PAGE_KERNEL_NOCACHE) | flags);
 if (unlikely(ret != 0))
  goto out;

 psz = (size + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
 pr_info("sqremap: %15s  [%4d page%s]  va 0x%08lx   pa 0x%08lx\n",
  likely(map->name) ? map->name : "???",
  psz, psz == 1 ? " " : "s",
  map->sq_addr, map->addr);

 sq_mapping_list_add(map);

 return map->sq_addr;

out:
 kmem_cache_free(sq_cache, map);
 return ret;
}
