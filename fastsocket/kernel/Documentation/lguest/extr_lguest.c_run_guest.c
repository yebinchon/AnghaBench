
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reason ;
typedef int notify_addr ;


 scalar_t__ ENOENT ;
 scalar_t__ ERESTART ;
 int cpu_id ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int handle_output (unsigned long) ;
 int lguest_fd ;
 int pread (int ,...) ;
 int restart_guest () ;
 int verbose (char*,unsigned long) ;

__attribute__((used)) static void __attribute__((noreturn)) run_guest(void)
{
 for (;;) {
  unsigned long notify_addr;
  int readval;


  readval = pread(lguest_fd, &notify_addr,
    sizeof(notify_addr), cpu_id);


  if (readval == sizeof(notify_addr)) {
   verbose("Notify on address %#lx\n", notify_addr);
   handle_output(notify_addr);

  } else if (errno == ENOENT) {
   char reason[1024] = { 0 };
   pread(lguest_fd, reason, sizeof(reason)-1, cpu_id);
   errx(1, "%s", reason);

  } else if (errno == ERESTART) {
   restart_guest();

  } else
   err(1, "Running guest failed");
 }
}
