
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct elfhdr {int e_phnum; scalar_t__ e_phoff; } ;
struct elf_phdr {scalar_t__ p_type; scalar_t__ p_paddr; scalar_t__ p_offset; scalar_t__ p_filesz; } ;
typedef int phdr ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ Elf32_Off ;


 scalar_t__ PT_LOAD ;
 int dump_write (struct file*,struct elf_phdr*,int) ;
 scalar_t__ vsyscall_ehdr ;

int elf_core_write_extra_phdrs(struct file *file, loff_t offset, size_t *size,
          unsigned long limit)
{
 if ( vsyscall_ehdr ) {
  const struct elfhdr *const ehdrp =
   (struct elfhdr *) vsyscall_ehdr;
  const struct elf_phdr *const phdrp =
   (const struct elf_phdr *) (vsyscall_ehdr + ehdrp->e_phoff);
  int i;
  Elf32_Off ofs = 0;

  for (i = 0; i < ehdrp->e_phnum; ++i) {
   struct elf_phdr phdr = phdrp[i];

   if (phdr.p_type == PT_LOAD) {
    ofs = phdr.p_offset = offset;
    offset += phdr.p_filesz;
   } else {
    phdr.p_offset += ofs;
   }
   phdr.p_paddr = 0;
   *size += sizeof(phdr);
   if (*size > limit
       || !dump_write(file, &phdr, sizeof(phdr)))
    return 0;
  }
 }
 return 1;
}
