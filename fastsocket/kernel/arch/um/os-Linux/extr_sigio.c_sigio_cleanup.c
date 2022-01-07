
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_stack (int ,int ) ;
 int os_kill_process (int,int) ;
 int write_sigio_pid ;
 int write_sigio_stack ;

__attribute__((used)) static void sigio_cleanup(void)
{
 if (write_sigio_pid == -1)
  return;

 os_kill_process(write_sigio_pid, 1);
 free_stack(write_sigio_stack, 0);
 write_sigio_pid = -1;
}
