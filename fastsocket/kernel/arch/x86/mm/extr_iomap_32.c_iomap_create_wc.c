
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ resource_size_t ;
typedef int pgprot_t ;


 int EINVAL ;
 unsigned long _PAGE_CACHE_WC ;
 unsigned long __PAGE_KERNEL ;
 int __pgprot (unsigned long) ;
 int io_reserve_memtype (scalar_t__,scalar_t__,unsigned long*) ;
 int is_io_mapping_possible (scalar_t__,unsigned long) ;

int iomap_create_wc(resource_size_t base, unsigned long size, pgprot_t *prot)
{
 unsigned long flag = _PAGE_CACHE_WC;
 int ret;

 if (!is_io_mapping_possible(base, size))
  return -EINVAL;

 ret = io_reserve_memtype(base, base + size, &flag);
 if (ret)
  return ret;

 *prot = __pgprot(__PAGE_KERNEL | flag);
 return 0;
}
