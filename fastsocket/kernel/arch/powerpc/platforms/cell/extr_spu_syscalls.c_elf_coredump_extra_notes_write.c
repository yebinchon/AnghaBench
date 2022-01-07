
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_calls {int (* coredump_extra_notes_write ) (struct file*,int *) ;} ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct spufs_calls* spufs_calls_get () ;
 int spufs_calls_put (struct spufs_calls*) ;
 int stub1 (struct file*,int *) ;

int elf_coredump_extra_notes_write(struct file *file, loff_t *foffset)
{
 struct spufs_calls *calls;
 int ret;

 calls = spufs_calls_get();
 if (!calls)
  return 0;

 ret = calls->coredump_extra_notes_write(file, foffset);

 spufs_calls_put(calls);

 return ret;
}
