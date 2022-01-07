
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int e_phnum; scalar_t__ e_phoff; } ;
struct elf_phdr {scalar_t__ p_type; int p_filesz; } ;


 scalar_t__ PT_LOAD ;
 scalar_t__ vsyscall_ehdr ;

size_t elf_core_extra_data_size(void)
{
 if ( vsyscall_ehdr ) {
  const struct elfhdr *const ehdrp =
   (struct elfhdr *)vsyscall_ehdr;
  const struct elf_phdr *const phdrp =
   (const struct elf_phdr *) (vsyscall_ehdr + ehdrp->e_phoff);
  int i;

  for (i = 0; i < ehdrp->e_phnum; ++i)
   if (phdrp[i].p_type == PT_LOAD)
    return (size_t) phdrp[i].p_filesz;
 }
 return 0;
}
