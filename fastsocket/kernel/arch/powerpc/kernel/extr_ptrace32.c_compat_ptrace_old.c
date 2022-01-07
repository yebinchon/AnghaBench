
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int compat_long_t ;


 long EPERM ;


 int compat_ptr (long) ;
 long copy_regset_from_user (struct task_struct*,int ,int ,int ,int,int ) ;
 long copy_regset_to_user (struct task_struct*,int ,int ,int ,int,int ) ;
 int current ;
 int task_user_regset_view (int ) ;

__attribute__((used)) static long compat_ptrace_old(struct task_struct *child, long request,
         long addr, long data)
{
 switch (request) {
 case 129:
  return copy_regset_to_user(child,
        task_user_regset_view(current), 0,
        0, 32 * sizeof(compat_long_t),
        compat_ptr(data));

 case 128:
  return copy_regset_from_user(child,
          task_user_regset_view(current), 0,
          0, 32 * sizeof(compat_long_t),
          compat_ptr(data));
 }

 return -EPERM;
}
