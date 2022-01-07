
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned long PGDIR_SIZE ;
 unsigned long __START_KERNEL_map ;
 int __pa (unsigned long) ;
 scalar_t__ get_safe_page (int ) ;
 int * init_level4_pgt ;
 int max_pfn ;
 int mk_kernel_pgd (int ) ;
 scalar_t__ pfn_to_kaddr (int ) ;
 int pgd_index (unsigned long) ;
 int res_phys_pud_init (int *,int ,int ) ;
 int set_pgd (int *,int ) ;
 int * temp_level4_pgt ;

__attribute__((used)) static int set_up_temporary_mappings(void)
{
 unsigned long start, end, next;
 int error;

 temp_level4_pgt = (pgd_t *)get_safe_page(GFP_ATOMIC);
 if (!temp_level4_pgt)
  return -ENOMEM;


 set_pgd(temp_level4_pgt + pgd_index(__START_KERNEL_map),
  init_level4_pgt[pgd_index(__START_KERNEL_map)]);


 start = (unsigned long)pfn_to_kaddr(0);
 end = (unsigned long)pfn_to_kaddr(max_pfn);

 for (; start < end; start = next) {
  pud_t *pud = (pud_t *)get_safe_page(GFP_ATOMIC);
  if (!pud)
   return -ENOMEM;
  next = start + PGDIR_SIZE;
  if (next > end)
   next = end;
  if ((error = res_phys_pud_init(pud, __pa(start), __pa(next))))
   return error;
  set_pgd(temp_level4_pgt + pgd_index(start),
   mk_kernel_pgd(__pa(pud)));
 }
 return 0;
}
