
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module {int name; } ;
struct TYPE_7__ {unsigned long r_offset; int r_info; scalar_t__ r_addend; } ;
struct TYPE_6__ {unsigned long st_value; } ;
struct TYPE_5__ {unsigned long sh_addr; size_t sh_info; int sh_size; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf32_Sym ;
typedef TYPE_3__ Elf32_Rela ;






 unsigned long COREB_L1_DATA_A_START ;
 int ELF32_R_SYM (int ) ;
 unsigned long ELF32_R_TYPE (int ) ;
 int ENOEXEC ;
 int bfin_mem_access_type (unsigned long,unsigned long) ;
 int dma_memcpy (void*,unsigned long*,unsigned long) ;
 int isram_memcpy (void*,unsigned long*,unsigned long) ;
 int memcpy (void*,unsigned long*,unsigned long) ;
 int pr_debug (char*,int ,unsigned long,unsigned long,...) ;
 int pr_err (char*,int ,unsigned long) ;

int
apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
     unsigned int symindex, unsigned int relsec,
     struct module *mod)
{
 unsigned int i;
 Elf32_Rela *rel = (void *)sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 unsigned long location, value, size;

 pr_debug("applying relocate section %u to %u\n", mod->name,
  relsec, sechdrs[relsec].sh_info);

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {

  location = sechdrs[sechdrs[relsec].sh_info].sh_addr +
             rel[i].r_offset;



  sym = (Elf32_Sym *) sechdrs[symindex].sh_addr
      + ELF32_R_SYM(rel[i].r_info);
  value = sym->st_value;
  value += rel[i].r_addend;
  pr_debug("location is %lx, value is %lx type is %d\n",
   mod->name, location, value, ELF32_R_TYPE(rel[i].r_info));

  switch (ELF32_R_TYPE(rel[i].r_info)) {

  case 135:
   value >>= 16;
  case 134:
  case 128:
   size = 2;
   break;
  case 136:
   size = 4;
   break;

  case 130:
  case 129:
  case 132:
  case 131:
  case 133:
   pr_err("unsupported relocation: %u (no -mlong-calls?)\n",
    mod->name, ELF32_R_TYPE(rel[i].r_info));
   return -ENOEXEC;

  default:
   pr_err("unknown relocation: %u\n", mod->name,
    ELF32_R_TYPE(rel[i].r_info));
   return -ENOEXEC;
  }

  switch (bfin_mem_access_type(location, size)) {
  case 140:
  case 139:
   memcpy((void *)location, &value, size);
   break;
  case 138:
   dma_memcpy((void *)location, &value, size);
   break;
  case 137:
   isram_memcpy((void *)location, &value, size);
   break;
  default:
   pr_err("invalid relocation for %#lx\n",
    mod->name, location);
   return -ENOEXEC;
  }
 }

 return 0;
}
