
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int dummy; } ;


 struct spu_context* coredump_next_context (int*) ;
 int spu_acquire_saved (struct spu_context*) ;
 int spu_release_saved (struct spu_context*) ;
 int spufs_ctx_note_size (struct spu_context*,int) ;

int spufs_coredump_extra_notes_size(void)
{
 struct spu_context *ctx;
 int size = 0, rc, fd;

 fd = 0;
 while ((ctx = coredump_next_context(&fd)) != ((void*)0)) {
  rc = spu_acquire_saved(ctx);
  if (rc)
   break;
  rc = spufs_ctx_note_size(ctx, fd);
  spu_release_saved(ctx);
  if (rc < 0)
   break;

  size += rc;


  fd++;
 }

 return size;
}
