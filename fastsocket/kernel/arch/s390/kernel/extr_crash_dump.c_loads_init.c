
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mem_chunk {scalar_t__ size; scalar_t__ type; int addr; } ;
struct TYPE_3__ {scalar_t__ p_filesz; scalar_t__ p_memsz; int p_flags; int p_align; int p_paddr; int p_vaddr; int p_offset; int p_type; } ;
typedef TYPE_1__ Elf64_Phdr ;


 scalar_t__ CHUNK_READ_ONLY ;
 scalar_t__ CHUNK_READ_WRITE ;
 int MEMORY_CHUNKS ;
 int PAGE_SIZE ;
 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PT_LOAD ;
 struct mem_chunk* get_memory_layout () ;
 int kfree (struct mem_chunk*) ;

__attribute__((used)) static int loads_init(Elf64_Phdr *phdr, u64 loads_offset)
{
 struct mem_chunk *chunk_array, *mem_chunk;
 int i;

 chunk_array = get_memory_layout();
 for (i = 0; i < MEMORY_CHUNKS; i++) {
  mem_chunk = &chunk_array[i];
  if (mem_chunk->size == 0)
   break;
  if (chunk_array[i].type != CHUNK_READ_WRITE &&
      chunk_array[i].type != CHUNK_READ_ONLY)
   continue;
  else
   phdr->p_filesz = mem_chunk->size;
  phdr->p_type = PT_LOAD;
  phdr->p_offset = mem_chunk->addr;
  phdr->p_vaddr = mem_chunk->addr;
  phdr->p_paddr = mem_chunk->addr;
  phdr->p_memsz = mem_chunk->size;
  phdr->p_flags = PF_R | PF_W | PF_X;
  phdr->p_align = PAGE_SIZE;
  phdr++;
 }
 kfree(chunk_array);
 return i;
}
