
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_calls {int (* notify_spus_active ) () ;} ;


 struct spufs_calls* spufs_calls_get () ;
 int spufs_calls_put (struct spufs_calls*) ;
 int stub1 () ;

void notify_spus_active(void)
{
 struct spufs_calls *calls;

 calls = spufs_calls_get();
 if (!calls)
  return;

 calls->notify_spus_active();
 spufs_calls_put(calls);

 return;
}
