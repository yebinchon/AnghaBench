
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_calls {int dummy; } ;


 int EBUSY ;
 int rcu_assign_pointer (scalar_t__,struct spufs_calls*) ;
 scalar_t__ spufs_calls ;

int register_spu_syscalls(struct spufs_calls *calls)
{
 if (spufs_calls)
  return -EBUSY;

 rcu_assign_pointer(spufs_calls, calls);
 return 0;
}
