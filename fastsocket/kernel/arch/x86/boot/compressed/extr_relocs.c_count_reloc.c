
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Sym ;
typedef int Elf32_Rel ;


 int reloc_count ;

__attribute__((used)) static void count_reloc(Elf32_Rel *rel, Elf32_Sym *sym)
{
 reloc_count += 1;
}
