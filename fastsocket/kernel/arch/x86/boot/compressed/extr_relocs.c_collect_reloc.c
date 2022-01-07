
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_offset; } ;
typedef int Elf32_Sym ;
typedef TYPE_1__ Elf32_Rel ;


 int reloc_idx ;
 int * relocs ;

__attribute__((used)) static void collect_reloc(Elf32_Rel *rel, Elf32_Sym *sym)
{

 relocs[reloc_idx++] = rel->r_offset;
}
