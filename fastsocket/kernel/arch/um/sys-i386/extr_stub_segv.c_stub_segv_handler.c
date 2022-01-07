
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;
struct faultinfo {int dummy; } ;


 int GET_FAULTINFO_FROM_SC (struct faultinfo,struct sigcontext*) ;
 scalar_t__ STUB_DATA ;
 int trap_myself () ;

void __attribute__ ((__section__ (".__syscall_stub")))
stub_segv_handler(int sig)
{
 struct sigcontext *sc = (struct sigcontext *) (&sig + 1);

 GET_FAULTINFO_FROM_SC(*((struct faultinfo *) STUB_DATA), sc);

 trap_myself();
}
