
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sh_name; } ;
struct TYPE_7__ {TYPE_1__ shdr; } ;
struct TYPE_6__ {int st_name; size_t st_shndx; } ;
typedef TYPE_2__ Elf32_Sym ;


 char* sec_name (int ) ;
 TYPE_4__* secs ;

__attribute__((used)) static const char *sym_name(const char *sym_strtab, Elf32_Sym *sym)
{
 const char *name;
 name = "<noname>";
 if (sym->st_name) {
  name = sym_strtab + sym->st_name;
 }
 else {
  name = sec_name(secs[sym->st_shndx].shdr.sh_name);
 }
 return name;
}
