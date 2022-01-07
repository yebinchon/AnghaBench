
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_handler; int * sa_restorer; int sa_mask; } ;


 int SA_NODEFER ;
 int SA_RESETHAND ;
 int errno ;
 int exit (int) ;
 int last_ditch_exit ;
 int printf (char*,int,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void install_fatal_handler(int sig)
{
 struct sigaction action;


 sigemptyset(&action.sa_mask);







 action.sa_flags = SA_RESETHAND | SA_NODEFER;
 action.sa_restorer = ((void*)0);
 action.sa_handler = last_ditch_exit;
 if (sigaction(sig, &action, ((void*)0)) < 0) {
  printf("failed to install handler for signal %d - errno = %d\n",
         sig, errno);
  exit(1);
 }
}
