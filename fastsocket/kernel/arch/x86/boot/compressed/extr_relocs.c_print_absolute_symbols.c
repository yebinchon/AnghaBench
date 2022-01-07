
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sh_type; int sh_size; } ;
struct section {TYPE_3__* symtab; TYPE_2__ shdr; TYPE_1__* link; } ;
struct TYPE_9__ {int e_shnum; } ;
struct TYPE_8__ {scalar_t__ st_shndx; int st_value; int st_size; int st_other; int st_info; } ;
struct TYPE_6__ {char* strtab; } ;
typedef TYPE_3__ Elf32_Sym ;


 int ELF32_ST_BIND (int ) ;
 int ELF32_ST_TYPE (int ) ;
 int ELF32_ST_VISIBILITY (int ) ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHT_SYMTAB ;
 TYPE_5__ ehdr ;
 int printf (char*,...) ;
 struct section* secs ;
 char* sym_bind (int ) ;
 char* sym_name (char*,TYPE_3__*) ;
 char* sym_type (int ) ;
 char* sym_visibility (int ) ;

__attribute__((used)) static void print_absolute_symbols(void)
{
 int i;
 printf("Absolute symbols\n");
 printf(" Num:    Value Size  Type       Bind        Visibility  Name\n");
 for (i = 0; i < ehdr.e_shnum; i++) {
  struct section *sec = &secs[i];
  char *sym_strtab;
  Elf32_Sym *sh_symtab;
  int j;

  if (sec->shdr.sh_type != SHT_SYMTAB) {
   continue;
  }
  sh_symtab = sec->symtab;
  sym_strtab = sec->link->strtab;
  for (j = 0; j < sec->shdr.sh_size/sizeof(Elf32_Sym); j++) {
   Elf32_Sym *sym;
   const char *name;
   sym = &sec->symtab[j];
   name = sym_name(sym_strtab, sym);
   if (sym->st_shndx != SHN_ABS) {
    continue;
   }
   printf("%5d %08x %5d %10s %10s %12s %s\n",
    j, sym->st_value, sym->st_size,
    sym_type(ELF32_ST_TYPE(sym->st_info)),
    sym_bind(ELF32_ST_BIND(sym->st_info)),
    sym_visibility(ELF32_ST_VISIBILITY(sym->st_other)),
    name);
  }
 }
 printf("\n");
}
