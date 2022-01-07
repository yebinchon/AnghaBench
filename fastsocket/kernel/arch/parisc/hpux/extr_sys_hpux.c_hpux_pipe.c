
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_pipe_flags (int*,int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;

int hpux_pipe(int *kstack_fildes)
{
 int error;

 lock_kernel();
 error = do_pipe_flags(kstack_fildes, 0);
 unlock_kernel();
 return error;
}
