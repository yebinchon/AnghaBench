
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_vm_change {scalar_t__ force; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int add_munmap (unsigned long,unsigned long,struct host_vm_change*) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int pud_mkuptodate (int ) ;
 scalar_t__ pud_newpage (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int update_pmd_range (int *,unsigned long,unsigned long,struct host_vm_change*) ;

__attribute__((used)) static inline int update_pud_range(pgd_t *pgd, unsigned long addr,
       unsigned long end,
       struct host_vm_change *hvc)
{
 pud_t *pud;
 unsigned long next;
 int ret = 0;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (!pud_present(*pud)) {
   if (hvc->force || pud_newpage(*pud)) {
    ret = add_munmap(addr, next - addr, hvc);
    pud_mkuptodate(*pud);
   }
  }
  else ret = update_pmd_range(pud, addr, next, hvc);
 } while (pud++, addr = next, ((addr < end) && !ret));
 return ret;
}
