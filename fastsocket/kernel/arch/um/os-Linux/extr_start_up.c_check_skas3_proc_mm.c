
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ disable_proc_mm ;
 int non_fatal (char*) ;
 int perror (char*) ;
 int proc_mm ;

__attribute__((used)) static inline void check_skas3_proc_mm(void)
{
 non_fatal("  - /proc/mm...");
 if (access("/proc/mm", W_OK) < 0)
  perror("not found");
 else if (disable_proc_mm)
  non_fatal("found but disabled on command line\n");
 else {
  proc_mm = 1;
  non_fatal("found\n");
 }
}
