
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int current_address; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int PTE_LEVEL_MULT ;
 int PTRS_PER_PTE ;
 int normalize_addr (unsigned long) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int) ;
 scalar_t__ pmd_page_vaddr (int ) ;
 int pte_pgprot (int ) ;

__attribute__((used)) static void walk_pte_level(struct seq_file *m, struct pg_state *st, pmd_t addr,
       unsigned long P)
{
 int i;
 pte_t *start;

 start = (pte_t *) pmd_page_vaddr(addr);
 for (i = 0; i < PTRS_PER_PTE; i++) {
  pgprot_t prot = pte_pgprot(*start);

  st->current_address = normalize_addr(P + i * PTE_LEVEL_MULT);
  note_page(m, st, prot, 4);
  start++;
 }
}
