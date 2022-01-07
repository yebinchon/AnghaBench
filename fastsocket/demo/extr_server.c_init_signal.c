
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGALRM ;
 int SIGINT ;
 int SIG_BLOCK ;
 int exit_cleanup () ;
 int perror (char*) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

void init_signal(void)
{
 sigset_t siglist;

 if(sigemptyset(&siglist) == -1) {
  perror("Unable to initialize signal list");
  exit_cleanup();
 }

 if(sigaddset(&siglist, SIGALRM) == -1) {
  perror("Unable to add SIGALRM signal to signal list");
  exit_cleanup();
 }

 if(sigaddset(&siglist, SIGINT) == -1) {
  perror("Unable to add SIGINT signal to signal list");
  exit_cleanup();
 }

 if(pthread_sigmask(SIG_BLOCK, &siglist, ((void*)0)) != 0) {
  perror("Unable to change signal mask");
  exit_cleanup();
 }
}
