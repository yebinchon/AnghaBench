
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sh_link; void* sh_entsize; void* sh_addralign; void* sh_info; void* sh_size; void* sh_offset; void* sh_addr; void* sh_flags; void* sh_type; void* sh_name; } ;
struct section {TYPE_1__ shdr; struct section* link; } ;
struct TYPE_7__ {int e_shnum; int e_shoff; } ;
struct TYPE_6__ {int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_size; int sh_offset; int sh_addr; int sh_flags; int sh_type; int sh_name; } ;
typedef int FILE ;
typedef TYPE_2__ Elf32_Shdr ;


 int SEEK_SET ;
 struct section* calloc (int,int) ;
 int die (char*,int,...) ;
 TYPE_4__ ehdr ;
 void* elf32_to_cpu (int ) ;
 int errno ;
 int fread (TYPE_2__*,int,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 struct section* secs ;
 int strerror (int ) ;

__attribute__((used)) static void read_shdrs(FILE *fp)
{
 int i;
 Elf32_Shdr shdr;

 secs = calloc(ehdr.e_shnum, sizeof(struct section));
 if (!secs) {
  die("Unable to allocate %d section headers\n",
      ehdr.e_shnum);
 }
 if (fseek(fp, ehdr.e_shoff, SEEK_SET) < 0) {
  die("Seek to %d failed: %s\n",
   ehdr.e_shoff, strerror(errno));
 }
 for (i = 0; i < ehdr.e_shnum; i++) {
  struct section *sec = &secs[i];
  if (fread(&shdr, sizeof shdr, 1, fp) != 1)
   die("Cannot read ELF section headers %d/%d: %s\n",
       i, ehdr.e_shnum, strerror(errno));
  sec->shdr.sh_name = elf32_to_cpu(shdr.sh_name);
  sec->shdr.sh_type = elf32_to_cpu(shdr.sh_type);
  sec->shdr.sh_flags = elf32_to_cpu(shdr.sh_flags);
  sec->shdr.sh_addr = elf32_to_cpu(shdr.sh_addr);
  sec->shdr.sh_offset = elf32_to_cpu(shdr.sh_offset);
  sec->shdr.sh_size = elf32_to_cpu(shdr.sh_size);
  sec->shdr.sh_link = elf32_to_cpu(shdr.sh_link);
  sec->shdr.sh_info = elf32_to_cpu(shdr.sh_info);
  sec->shdr.sh_addralign = elf32_to_cpu(shdr.sh_addralign);
  sec->shdr.sh_entsize = elf32_to_cpu(shdr.sh_entsize);
  if (sec->shdr.sh_link < ehdr.e_shnum)
   sec->link = &secs[sec->shdr.sh_link];
 }

}
