
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;int sa_mask; scalar_t__ sa_flags; } ;
typedef int sigset_t ;


 int SIG_UNBLOCK ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static int install_handler(int signum, void (*handler)(int))
{
 struct sigaction action;
 sigset_t mask;


 sigemptyset(&mask);
 sigaddset(&mask, signum);
 sigprocmask(SIG_UNBLOCK, &mask, ((void*)0));


 action.sa_handler = handler;
 action.sa_flags = 0;
 sigemptyset(&action.sa_mask);
 sigaction(signum, &action, ((void*)0));

 return 0;
}
