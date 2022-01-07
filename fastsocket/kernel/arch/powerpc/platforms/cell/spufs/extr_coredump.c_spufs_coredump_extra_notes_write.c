
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int * name; } ;


 struct spu_context* coredump_next_context (int*) ;
 int spu_acquire_saved (struct spu_context*) ;
 int spu_release_saved (struct spu_context*) ;
 int spufs_arch_write_note (struct spu_context*,int,struct file*,int,int *) ;
 TYPE_1__* spufs_coredump_read ;

int spufs_coredump_extra_notes_write(struct file *file, loff_t *foffset)
{
 struct spu_context *ctx;
 int fd, j, rc;

 fd = 0;
 while ((ctx = coredump_next_context(&fd)) != ((void*)0)) {
  rc = spu_acquire_saved(ctx);
  if (rc)
   return rc;

  for (j = 0; spufs_coredump_read[j].name != ((void*)0); j++) {
   rc = spufs_arch_write_note(ctx, j, file, fd, foffset);
   if (rc) {
    spu_release_saved(ctx);
    return rc;
   }
  }

  spu_release_saved(ctx);


  fd++;
 }

 return 0;
}
