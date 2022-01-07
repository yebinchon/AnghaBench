
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct elf_note {int dummy; } ;
struct TYPE_2__ {char* name; int size; } ;


 scalar_t__ roundup (int,int) ;
 int sprintf (char*,char*,int,char*) ;
 TYPE_1__* spufs_coredump_read ;
 int strlen (char*) ;

__attribute__((used)) static int spufs_ctx_note_size(struct spu_context *ctx, int dfd)
{
 int i, sz, total = 0;
 char *name;
 char fullname[80];

 for (i = 0; spufs_coredump_read[i].name != ((void*)0); i++) {
  name = spufs_coredump_read[i].name;
  sz = spufs_coredump_read[i].size;

  sprintf(fullname, "SPU/%d/%s", dfd, name);

  total += sizeof(struct elf_note);
  total += roundup(strlen(fullname) + 1, 4);
  total += roundup(sz, 4);
 }

 return total;
}
