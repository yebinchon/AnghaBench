
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef unsigned long u32 ;
struct TYPE_8__ {unsigned long toc; void* tramp; } ;
struct module {TYPE_1__ arch; int name; } ;
struct TYPE_11__ {int r_offset; unsigned long r_addend; int r_info; } ;
struct TYPE_10__ {size_t sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_9__ {int st_name; unsigned long st_value; int st_shndx; } ;
typedef TYPE_2__ Elf64_Sym ;
typedef TYPE_3__ Elf64_Shdr ;
typedef TYPE_4__ Elf64_Rela ;


 int DEBUGP (char*,...) ;
 int ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 int ENOENT ;
 int ENOEXEC ;







 int SHN_UNDEF ;
 scalar_t__ ftrace_caller ;
 unsigned long my_r2 (TYPE_3__*,struct module*) ;
 int printk (char*,int ,unsigned long) ;
 int restore_r2 (unsigned long*,struct module*) ;
 void* stub_for_addr (TYPE_3__*,unsigned long,struct module*) ;

int apply_relocate_add(Elf64_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *me)
{
 unsigned int i;
 Elf64_Rela *rela = (void *)sechdrs[relsec].sh_addr;
 Elf64_Sym *sym;
 unsigned long *location;
 unsigned long value;

 DEBUGP("Applying ADD relocate section %u to %u\n", relsec,
        sechdrs[relsec].sh_info);
 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {

  location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rela[i].r_offset;

  sym = (Elf64_Sym *)sechdrs[symindex].sh_addr
   + ELF64_R_SYM(rela[i].r_info);

  DEBUGP("RELOC at %p: %li-type as %s (%lu) + %li\n",
         location, (long)ELF64_R_TYPE(rela[i].r_info),
         strtab + sym->st_name, (unsigned long)sym->st_value,
         (long)rela[i].r_addend);


  value = sym->st_value + rela[i].r_addend;

  switch (ELF64_R_TYPE(rela[i].r_info)) {
  case 134:

   *(u32 *)location = value;
   break;

  case 133:

   *(unsigned long *)location = value;
   break;

  case 131:
   *(unsigned long *)location = my_r2(sechdrs, me);
   break;

  case 130:

   value -= my_r2(sechdrs, me);
   if (value + 0x8000 > 0xffff) {
    printk("%s: bad TOC16 relocation (%lu)\n",
           me->name, value);
    return -ENOEXEC;
   }
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xffff)
    | (value & 0xffff);
   break;

  case 129:

   value -= my_r2(sechdrs, me);
   if ((value & 3) != 0 || value + 0x8000 > 0xffff) {
    printk("%s: bad TOC16_DS relocation (%lu)\n",
           me->name, value);
    return -ENOEXEC;
   }
   *((uint16_t *) location)
    = (*((uint16_t *) location) & ~0xfffc)
    | (value & 0xfffc);
   break;

  case 128:

   if (sym->st_shndx == SHN_UNDEF) {

    value = stub_for_addr(sechdrs, value, me);
    if (!value)
     return -ENOENT;
    if (!restore_r2((u32 *)location + 1, me))
     return -ENOEXEC;
   }


   value -= (unsigned long)location;
   if (value + 0x2000000 > 0x3ffffff || (value & 3) != 0){
    printk("%s: REL24 %li out of range!\n",
           me->name, (long int)value);
    return -ENOEXEC;
   }


   *(uint32_t *)location
    = (*(uint32_t *)location & ~0x03fffffc)
    | (value & 0x03fffffc);
   break;

  case 132:

   *location = value - (unsigned long)location;
   break;

  default:
   printk("%s: Unknown ADD relocation: %lu\n",
          me->name,
          (unsigned long)ELF64_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }
 return 0;
}
