
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dbe_list; void* dbe_end; void* dbe_start; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_8__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_7__ {int sh_offset; int sh_name; int sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf_Ehdr ;


 int INIT_LIST_HEAD (int *) ;
 int dbe_list ;
 int dbe_lock ;
 int list_add (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ strcmp (char*,char*) ;

int module_finalize(const Elf_Ehdr *hdr,
      const Elf_Shdr *sechdrs,
      struct module *me)
{
 const Elf_Shdr *s;
 char *secstrings = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;

 INIT_LIST_HEAD(&me->arch.dbe_list);
 for (s = sechdrs; s < sechdrs + hdr->e_shnum; s++) {
  if (strcmp("__dbe_table", secstrings + s->sh_name) != 0)
   continue;
  me->arch.dbe_start = (void *)s->sh_addr;
  me->arch.dbe_end = (void *)s->sh_addr + s->sh_size;
  spin_lock_irq(&dbe_lock);
  list_add(&me->arch.dbe_list, &dbe_list);
  spin_unlock_irq(&dbe_lock);
 }
 return 0;
}
