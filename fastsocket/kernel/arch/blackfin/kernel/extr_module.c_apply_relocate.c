
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;
typedef int Elf_Shdr ;


 int ENOEXEC ;
 int pr_err (char*,int ) ;

int
apply_relocate(Elf_Shdr * sechdrs, const char *strtab,
        unsigned int symindex, unsigned int relsec, struct module *me)
{
 pr_err(".rel unsupported\n", me->name);
 return -ENOEXEC;
}
