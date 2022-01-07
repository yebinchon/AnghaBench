
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCONT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIG_DFL ;
 int SIG_IGN ;
 int WNOHANG ;
 int __WALL ;
 int abort () ;
 int kill (int ,int ) ;
 int os_kill_ptraced_process (int,int ) ;
 int signal (int ,int ) ;
 int waitpid (int,int *,int) ;

void os_dump_core(void)
{
 int pid;

 signal(SIGSEGV, SIG_DFL);
 signal(SIGTERM, SIG_IGN);
 kill(0, SIGTERM);





 kill(0, SIGCONT);
 while ((pid = waitpid(-1, ((void*)0), WNOHANG | __WALL)) > 0)
  os_kill_ptraced_process(pid, 0);

 abort();
}
