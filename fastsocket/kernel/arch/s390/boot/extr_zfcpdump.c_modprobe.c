
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int PRINT_PERR (char*) ;
 int execl (char*,char*,char const*,char*,int *) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static void modprobe(const char *module)
{
 pid_t pid;

 pid = fork();
 if (pid < 0) {
  PRINT_PERR("fork failed\n");
  return;
 } else if (pid == 0) {
  execl("/bin/modprobe", "modprobe", module, "-q", ((void*)0));
  execl("/sbin/modprobe", "modprobe", module, "-q", ((void*)0));
  exit(1);
 } else {
  waitpid(pid, ((void*)0), 0);
 }
}
