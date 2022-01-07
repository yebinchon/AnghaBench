
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_calls {int (* coredump_extra_notes_size ) () ;} ;


 struct spufs_calls* spufs_calls_get () ;
 int spufs_calls_put (struct spufs_calls*) ;
 int stub1 () ;

int elf_coredump_extra_notes_size(void)
{
 struct spufs_calls *calls;
 int ret;

 calls = spufs_calls_get();
 if (!calls)
  return 0;

 ret = calls->coredump_extra_notes_size();

 spufs_calls_put(calls);

 return ret;
}
