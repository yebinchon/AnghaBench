
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sh_type; int sh_size; int sh_offset; } ;
struct section {TYPE_2__* symtab; TYPE_1__ shdr; } ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {int st_shndx; void* st_size; void* st_value; void* st_name; } ;
typedef int FILE ;
typedef TYPE_2__ Elf32_Sym ;


 int SEEK_SET ;
 scalar_t__ SHT_SYMTAB ;
 int die (char*,int,...) ;
 TYPE_5__ ehdr ;
 int elf16_to_cpu (int ) ;
 void* elf32_to_cpu (void*) ;
 int errno ;
 int fread (TYPE_2__*,int,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 TYPE_2__* malloc (int) ;
 struct section* secs ;
 int strerror (int ) ;

__attribute__((used)) static void read_symtabs(FILE *fp)
{
 int i,j;
 for (i = 0; i < ehdr.e_shnum; i++) {
  struct section *sec = &secs[i];
  if (sec->shdr.sh_type != SHT_SYMTAB) {
   continue;
  }
  sec->symtab = malloc(sec->shdr.sh_size);
  if (!sec->symtab) {
   die("malloc of %d bytes for symtab failed\n",
    sec->shdr.sh_size);
  }
  if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
   die("Seek to %d failed: %s\n",
    sec->shdr.sh_offset, strerror(errno));
  }
  if (fread(sec->symtab, 1, sec->shdr.sh_size, fp)
      != sec->shdr.sh_size) {
   die("Cannot read symbol table: %s\n",
    strerror(errno));
  }
  for (j = 0; j < sec->shdr.sh_size/sizeof(Elf32_Sym); j++) {
   Elf32_Sym *sym = &sec->symtab[j];
   sym->st_name = elf32_to_cpu(sym->st_name);
   sym->st_value = elf32_to_cpu(sym->st_value);
   sym->st_size = elf32_to_cpu(sym->st_size);
   sym->st_shndx = elf16_to_cpu(sym->st_shndx);
  }
 }
}
