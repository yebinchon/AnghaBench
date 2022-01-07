
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aio_pid ;
 int aio_stack ;
 int free_stack (int ,int ) ;
 int os_kill_process (int,int) ;

__attribute__((used)) static void exit_aio(void)
{
 if (aio_pid != -1) {
  os_kill_process(aio_pid, 1);
  free_stack(aio_stack, 0);
 }
}
