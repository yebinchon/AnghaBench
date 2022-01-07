
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int ) ;
 int PTRACE_CONT ;
 int PTRACE_KILL ;
 int SIGKILL ;
 int __WALL ;
 int kill (int,int ) ;
 int ptrace (int ,int) ;
 int waitpid (int,int *,int ) ;

void os_kill_ptraced_process(int pid, int reap_child)
{
 kill(pid, SIGKILL);
 ptrace(PTRACE_KILL, pid);
 ptrace(PTRACE_CONT, pid);
 if (reap_child)
  CATCH_EINTR(waitpid(pid, ((void*)0), __WALL));
}
