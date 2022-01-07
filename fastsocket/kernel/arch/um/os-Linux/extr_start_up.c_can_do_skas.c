
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_skas3_proc_mm () ;
 int check_skas3_ptrace_faultinfo () ;
 int check_skas3_ptrace_ldt () ;
 int non_fatal (char*) ;
 int proc_mm ;
 int ptrace_faultinfo ;
 int ptrace_ldt ;
 int skas_needs_stub ;

void can_do_skas(void)
{
 non_fatal("Checking for the skas3 patch in the host:\n");

 check_skas3_proc_mm();
 check_skas3_ptrace_faultinfo();
 check_skas3_ptrace_ldt();

 if (!proc_mm || !ptrace_faultinfo || !ptrace_ldt)
  skas_needs_stub = 1;
}
