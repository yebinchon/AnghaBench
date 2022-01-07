
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int) ;
 scalar_t__ SIGSTOP ;
 int WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int WUNTRACED ;
 int fatal (char*,int) ;
 int fatal_perror (char*) ;
 int fork () ;
 int ptrace_child () ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int start_ptraced_child(void)
{
 int pid, n, status;

 pid = fork();
 if (pid == 0)
  ptrace_child();
 else if (pid < 0)
  fatal_perror("start_ptraced_child : fork failed");

 CATCH_EINTR(n = waitpid(pid, &status, WUNTRACED));
 if (n < 0)
  fatal_perror("check_ptrace : waitpid failed");
 if (!WIFSTOPPED(status) || (WSTOPSIG(status) != SIGSTOP))
  fatal("check_ptrace : expected SIGSTOP, got status = %d",
        status);

 return pid;
}
