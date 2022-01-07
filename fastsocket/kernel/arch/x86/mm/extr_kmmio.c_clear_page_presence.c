
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmmio_fault_page {unsigned int page; int old_presence; } ;
typedef int pte_t ;
typedef int pmd_t ;




 int __flush_tlb_one (unsigned int) ;
 int clear_pmd_presence (int *,int,int *) ;
 int clear_pte_presence (int *,int,int *) ;
 int * lookup_address (unsigned int,unsigned int*) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int clear_page_presence(struct kmmio_fault_page *f, bool clear)
{
 unsigned int level;
 pte_t *pte = lookup_address(f->page, &level);

 if (!pte) {
  pr_err("kmmio: no pte for page 0x%08lx\n", f->page);
  return -1;
 }

 switch (level) {
 case 129:
  clear_pmd_presence((pmd_t *)pte, clear, &f->old_presence);
  break;
 case 128:
  clear_pte_presence(pte, clear, &f->old_presence);
  break;
 default:
  pr_err("kmmio: unexpected page level 0x%x.\n", level);
  return -1;
 }

 __flush_tlb_one(f->page);
 return 0;
}
