
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int phdr ;
struct TYPE_6__ {int e_phnum; scalar_t__ e_type; scalar_t__ e_machine; int e_phentsize; unsigned long e_entry; int e_phoff; } ;
struct TYPE_5__ {scalar_t__ p_type; int p_filesz; int p_offset; scalar_t__ p_paddr; int p_memsz; } ;
typedef TYPE_1__ Elf32_Phdr ;
typedef TYPE_2__ Elf32_Ehdr ;


 scalar_t__ EM_386 ;
 scalar_t__ ET_EXEC ;
 scalar_t__ PT_LOAD ;
 int SEEK_SET ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int from_guest_phys (scalar_t__) ;
 scalar_t__ lseek (int,int ,int ) ;
 int map_at (int,int ,int ,int ) ;
 int read (int,TYPE_1__*,int) ;
 int verbose (char*,unsigned int,int ,void*) ;

__attribute__((used)) static unsigned long map_elf(int elf_fd, const Elf32_Ehdr *ehdr)
{
 Elf32_Phdr phdr[ehdr->e_phnum];
 unsigned int i;





 if (ehdr->e_type != ET_EXEC
     || ehdr->e_machine != EM_386
     || ehdr->e_phentsize != sizeof(Elf32_Phdr)
     || ehdr->e_phnum < 1 || ehdr->e_phnum > 65536U/sizeof(Elf32_Phdr))
  errx(1, "Malformed elf header");
 if (lseek(elf_fd, ehdr->e_phoff, SEEK_SET) < 0)
  err(1, "Seeking to program headers");
 if (read(elf_fd, phdr, sizeof(phdr)) != sizeof(phdr))
  err(1, "Reading program headers");





 for (i = 0; i < ehdr->e_phnum; i++) {

  if (phdr[i].p_type != PT_LOAD)
   continue;

  verbose("Section %i: size %i addr %p\n",
   i, phdr[i].p_memsz, (void *)phdr[i].p_paddr);


  map_at(elf_fd, from_guest_phys(phdr[i].p_paddr),
         phdr[i].p_offset, phdr[i].p_filesz);
 }


 return ehdr->e_entry;
}
