
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {void* current_address; } ;
typedef int st ;
typedef int pgprotval_t ;
typedef int pgd_t ;


 int PGD_LEVEL_MULT ;
 int PTE_FLAGS_MASK ;
 int PTRS_PER_PGD ;
 int __pgprot (int) ;
 int init_level4_pgt ;
 int memset (struct pg_state*,int ,int) ;
 void* normalize_addr (int) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int) ;
 scalar_t__ pgd_large (int ) ;
 int pgd_none (int ) ;
 int pgd_present (int ) ;
 int pgd_val (int ) ;
 int * swapper_pg_dir ;
 int walk_pud_level (struct seq_file*,struct pg_state*,int ,int) ;

__attribute__((used)) static void walk_pgd_level(struct seq_file *m)
{



 pgd_t *start = swapper_pg_dir;

 int i;
 struct pg_state st;

 memset(&st, 0, sizeof(st));

 for (i = 0; i < PTRS_PER_PGD; i++) {
  st.current_address = normalize_addr(i * PGD_LEVEL_MULT);
  if (!pgd_none(*start)) {
   pgprotval_t prot = pgd_val(*start) & PTE_FLAGS_MASK;

   if (pgd_large(*start) || !pgd_present(*start))
    note_page(m, &st, __pgprot(prot), 1);
   else
    walk_pud_level(m, &st, *start,
            i * PGD_LEVEL_MULT);
  } else
   note_page(m, &st, __pgprot(0), 1);

  start++;
 }


 st.current_address = normalize_addr(PTRS_PER_PGD*PGD_LEVEL_MULT);
 note_page(m, &st, __pgprot(0), 0);
}
