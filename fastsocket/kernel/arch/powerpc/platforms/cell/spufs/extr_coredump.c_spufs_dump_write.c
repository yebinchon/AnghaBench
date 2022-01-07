
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {int f_pos; TYPE_3__* f_op; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_8__ {TYPE_2__* signal; } ;
struct TYPE_7__ {int (* write ) (struct file*,void const*,int,int *) ;} ;
struct TYPE_6__ {TYPE_1__* rlim; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;


 int EIO ;
 size_t RLIMIT_CORE ;
 TYPE_4__* current ;
 int stub1 (struct file*,void const*,int,int *) ;

__attribute__((used)) static int spufs_dump_write(struct file *file, const void *addr, int nr, loff_t *foffset)
{
 unsigned long limit = current->signal->rlim[RLIMIT_CORE].rlim_cur;
 ssize_t written;

 if (*foffset + nr > limit)
  return -EIO;

 written = file->f_op->write(file, addr, nr, &file->f_pos);
 *foffset += written;

 if (written != nr)
  return -EIO;

 return 0;
}
