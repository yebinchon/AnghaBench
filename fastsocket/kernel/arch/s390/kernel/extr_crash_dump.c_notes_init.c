
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct save_area_s390x {scalar_t__ pref_reg; } ;
struct TYPE_6__ {struct save_area_s390x s390x; } ;
struct TYPE_5__ {unsigned long p_filesz; unsigned long p_memsz; int p_offset; int p_type; } ;
typedef TYPE_1__ Elf64_Phdr ;


 scalar_t__ PTR_SUB (void*,void*) ;
 int PT_NOTE ;
 void* fill_cpu_elf_notes (void*,struct save_area_s390x*) ;
 int memset (TYPE_1__*,int ,int) ;
 void* nt_prpsinfo (void*) ;
 void* nt_vmcoreinfo (void*) ;
 int relocate (int ) ;
 TYPE_2__** zfcpdump_save_areas ;

__attribute__((used)) static void *notes_init(Elf64_Phdr *phdr, void *ptr, u64 notes_offset)
{
 struct save_area_s390x *sa;
 void *ptr_start = ptr;
 int i;

 ptr = nt_prpsinfo(ptr);

 for (i = 0; zfcpdump_save_areas[i]; i++) {
  sa = &zfcpdump_save_areas[i]->s390x;
  if (sa->pref_reg == 0)
   continue;
  ptr = fill_cpu_elf_notes(ptr, sa);
 }
 ptr = nt_vmcoreinfo(ptr);
 memset(phdr, 0, sizeof(*phdr));
 phdr->p_type = PT_NOTE;
 phdr->p_offset = relocate(notes_offset);
 phdr->p_filesz = (unsigned long) PTR_SUB(ptr, ptr_start);
 phdr->p_memsz = phdr->p_filesz;
 return ptr;
}
