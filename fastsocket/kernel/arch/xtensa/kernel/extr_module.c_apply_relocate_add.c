
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct module {unsigned int name; } ;
struct TYPE_7__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_6__ {int sh_info; int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_5__ {int st_value; int st_name; } ;
typedef TYPE_1__ Elf32_Sym ;
typedef TYPE_2__ Elf32_Shdr ;
typedef TYPE_3__ Elf32_Rela ;


 int ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ENOEXEC ;
 int decode_calln_opcode (unsigned char*) ;
 int decode_l32r_opcode (unsigned char*) ;
 int printk (char*,unsigned int,int,...) ;

int apply_relocate_add(Elf32_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *mod)
{
 unsigned int i;
        Elf32_Rela *rela = (void *)sechdrs[relsec].sh_addr;
 Elf32_Sym *sym;
 unsigned char *location;
 uint32_t value;





 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rela); i++) {
  location = (char *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rela[i].r_offset;
  sym = (Elf32_Sym *)sechdrs[symindex].sh_addr
   + ELF32_R_SYM(rela[i].r_info);
  value = sym->st_value + rela[i].r_addend;

  switch (ELF32_R_TYPE(rela[i].r_info)) {
  case 159:
  case 160:
  case 162:
  case 161:
  case 163:
   break;

  case 164:
  case 158:
   *(uint32_t *)location += value;
   break;

  case 156:
   if (decode_calln_opcode(location)) {
    value -= ((unsigned long)location & -4) + 4;
    if ((value & 3) != 0 ||
        ((value + (1 << 19)) >> 20) != 0) {
     printk("%s: relocation out of range, "
            "section %d reloc %d "
            "sym '%s'\n",
            mod->name, relsec, i,
            strtab + sym->st_name);
     return -ENOEXEC;
    }
    value = (signed int)value >> 2;
   } else if (decode_l32r_opcode(location)) {
    value -= (((unsigned long)location + 3) & -4);
    if ((value & 3) != 0 ||
        (signed int)value >> 18 != -1) {
     printk("%s: relocation out of range, "
            "section %d reloc %d "
            "sym '%s'\n",
            mod->name, relsec, i,
            strtab + sym->st_name);
     return -ENOEXEC;
    }
    value = (signed int)value >> 2;
   }
   break;

  case 144:
  case 142:
  case 140:
  case 138:
  case 136:
  case 134:
  case 132:
  case 130:
  case 128:
  case 154:
  case 152:
  case 150:
  case 148:
  case 146:
   printk("%s: unexpected FLIX relocation: %u\n",
          mod->name,
          ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;

  case 157:
  case 145:
  case 143:
  case 141:
  case 139:
  case 137:
  case 135:
  case 133:
  case 131:
  case 129:
  case 155:
  case 153:
  case 151:
  case 149:
  case 147:
   printk("%s: unexpected ALT relocation: %u\n",
          mod->name,
          ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;

  default:
   printk("%s: unexpected relocation: %u\n",
          mod->name,
          ELF32_R_TYPE(rela[i].r_info));
   return -ENOEXEC;
  }
 }
 return 0;
}
