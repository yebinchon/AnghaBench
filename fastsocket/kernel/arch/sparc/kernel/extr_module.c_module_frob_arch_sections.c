
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module {int name; } ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {scalar_t__ sh_type; size_t sh_link; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_6__ {scalar_t__ st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf_Ehdr ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 int ENOEXEC ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STT_REGISTER ;
 int dot2underscore (char*) ;
 int printk (char*,int ) ;

int module_frob_arch_sections(Elf_Ehdr *hdr,
         Elf_Shdr *sechdrs,
         char *secstrings,
         struct module *mod)
{
 unsigned int symidx;
 Elf_Sym *sym;
 char *strtab;
 int i;

 for (symidx = 0; sechdrs[symidx].sh_type != SHT_SYMTAB; symidx++) {
  if (symidx == hdr->e_shnum-1) {
   printk("%s: no symtab found.\n", mod->name);
   return -ENOEXEC;
  }
 }
 sym = (Elf_Sym *)sechdrs[symidx].sh_addr;
 strtab = (char *)sechdrs[sechdrs[symidx].sh_link].sh_addr;

 for (i = 1; i < sechdrs[symidx].sh_size / sizeof(Elf_Sym); i++) {
  if (sym[i].st_shndx == SHN_UNDEF) {
   if (ELF_ST_TYPE(sym[i].st_info) == STT_REGISTER) {
    sym[i].st_shndx = SHN_ABS;
   } else {
    char *name = strtab + sym[i].st_name;
    dot2underscore(name);
   }
  }
 }
 return 0;
}
