
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int) ;
 int PTRACE_CONT ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int exit (int) ;
 int non_fatal (char*,...) ;
 int perror (char*) ;
 scalar_t__ ptrace (int ,int,int ,int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int stop_ptraced_child(int pid, int exitcode, int mustexit)
{
 int status, n, ret = 0;

 if (ptrace(PTRACE_CONT, pid, 0, 0) < 0) {
  perror("stop_ptraced_child : ptrace failed");
  return -1;
 }
 CATCH_EINTR(n = waitpid(pid, &status, 0));
 if (!WIFEXITED(status) || (WEXITSTATUS(status) != exitcode)) {
  int exit_with = WEXITSTATUS(status);
  if (exit_with == 2)
   non_fatal("check_ptrace : child exited with status 2. "
      "\nDisabling SYSEMU support.\n");
  non_fatal("check_ptrace : child exited with exitcode %d, while "
     "expecting %d; status 0x%x\n", exit_with,
     exitcode, status);
  if (mustexit)
   exit(1);
  ret = -1;
 }

 return ret;
}
