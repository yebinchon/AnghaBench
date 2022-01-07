
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef size_t u32 ;
typedef int Elf64_Phdr ;


 int BUG_ON (int) ;
 void* PTR_ADD (void*,int) ;
 unsigned long PTR_DIFF (void*,void*) ;
 void* ehdr_init (void*,int) ;
 int get_cpu_cnt () ;
 int get_mem_chunk_cnt () ;
 void* kzalloc_panic (size_t) ;
 int loads_init (int *,unsigned long) ;
 void* notes_init (int *,void*,unsigned long) ;
 scalar_t__ relocate (unsigned long) ;

__attribute__((used)) static void s390_elf_corehdr_create(char **elfcorebuf, size_t *elfcorebuf_sz)
{
 Elf64_Phdr *phdr_notes, *phdr_loads;
 int mem_chunk_cnt;
 void *ptr, *hdr;
 u32 alloc_size;
 u64 hdr_off;

 mem_chunk_cnt = get_mem_chunk_cnt();

 alloc_size = 0x1000 + get_cpu_cnt() * 0x300 +
  mem_chunk_cnt * sizeof(Elf64_Phdr);
 hdr = kzalloc_panic(alloc_size);

 ptr = ehdr_init(hdr, mem_chunk_cnt);

 phdr_notes = ptr;
 ptr = PTR_ADD(ptr, sizeof(Elf64_Phdr));
 phdr_loads = ptr;
 ptr = PTR_ADD(ptr, sizeof(Elf64_Phdr) * mem_chunk_cnt);

 hdr_off = PTR_DIFF(ptr, hdr);
 ptr = notes_init(phdr_notes, ptr, ((unsigned long) hdr) + hdr_off);

 hdr_off = PTR_DIFF(ptr, hdr);
 loads_init(phdr_loads, ((unsigned long) hdr) + hdr_off);
 *elfcorebuf_sz = hdr_off;
 *elfcorebuf = (void *) relocate((unsigned long) hdr);
 BUG_ON(*elfcorebuf_sz > alloc_size);
}
