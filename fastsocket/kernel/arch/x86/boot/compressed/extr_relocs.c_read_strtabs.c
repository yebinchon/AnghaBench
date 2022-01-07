
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sh_type; scalar_t__ sh_size; int sh_offset; } ;
struct section {TYPE_1__ shdr; int strtab; } ;
struct TYPE_4__ {int e_shnum; } ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ SHT_STRTAB ;
 int die (char*,scalar_t__,...) ;
 TYPE_2__ ehdr ;
 int errno ;
 scalar_t__ fread (int ,int,scalar_t__,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int malloc (scalar_t__) ;
 struct section* secs ;
 scalar_t__ strerror (int ) ;

__attribute__((used)) static void read_strtabs(FILE *fp)
{
 int i;
 for (i = 0; i < ehdr.e_shnum; i++) {
  struct section *sec = &secs[i];
  if (sec->shdr.sh_type != SHT_STRTAB) {
   continue;
  }
  sec->strtab = malloc(sec->shdr.sh_size);
  if (!sec->strtab) {
   die("malloc of %d bytes for strtab failed\n",
    sec->shdr.sh_size);
  }
  if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
   die("Seek to %d failed: %s\n",
    sec->shdr.sh_offset, strerror(errno));
  }
  if (fread(sec->strtab, 1, sec->shdr.sh_size, fp)
      != sec->shdr.sh_size) {
   die("Cannot read symbol table: %s\n",
    strerror(errno));
  }
 }
}
