
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int e_phnum; } ;
typedef int Elf32_Half ;


 scalar_t__ vsyscall_ehdr ;

Elf32_Half elf_core_extra_phdrs(void)
{
 return vsyscall_ehdr ? (((struct elfhdr *)vsyscall_ehdr)->e_phnum) : 0;
}
