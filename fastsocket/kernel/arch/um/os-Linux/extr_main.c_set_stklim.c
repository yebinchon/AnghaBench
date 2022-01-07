
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_cur; } ;


 int RLIMIT_STACK ;
 scalar_t__ RLIM_INFINITY ;
 scalar_t__ STACKSIZE ;
 int exit (int) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int perror (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static void set_stklim(void)
{
 struct rlimit lim;

 if (getrlimit(RLIMIT_STACK, &lim) < 0) {
  perror("getrlimit");
  exit(1);
 }
 if ((lim.rlim_cur == RLIM_INFINITY) || (lim.rlim_cur > STACKSIZE)) {
  lim.rlim_cur = STACKSIZE;
  if (setrlimit(RLIMIT_STACK, &lim) < 0) {
   perror("setrlimit");
   exit(1);
  }
 }
}
