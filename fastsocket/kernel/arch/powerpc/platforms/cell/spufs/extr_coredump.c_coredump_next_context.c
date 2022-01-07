
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spu_context {int flags; } ;
struct file {TYPE_1__* f_dentry; int * f_op; } ;
struct fdtable {int max_fds; int open_fds; } ;
struct TYPE_6__ {struct spu_context* i_ctx; } ;
struct TYPE_5__ {int files; } ;
struct TYPE_4__ {int d_inode; } ;


 int FD_ISSET (int,int ) ;
 TYPE_3__* SPUFS_I (int ) ;
 int SPU_CREATE_NOSCHED ;
 TYPE_2__* current ;
 struct file* fcheck (int) ;
 struct fdtable* files_fdtable (int ) ;
 int spufs_context_fops ;

__attribute__((used)) static struct spu_context *coredump_next_context(int *fd)
{
 struct fdtable *fdt = files_fdtable(current->files);
 struct file *file;
 struct spu_context *ctx = ((void*)0);

 for (; *fd < fdt->max_fds; (*fd)++) {
  if (!FD_ISSET(*fd, fdt->open_fds))
   continue;

  file = fcheck(*fd);

  if (!file || file->f_op != &spufs_context_fops)
   continue;

  ctx = SPUFS_I(file->f_dentry->d_inode)->i_ctx;
  if (ctx->flags & SPU_CREATE_NOSCHED)
   continue;

  break;
 }

 return ctx;
}
