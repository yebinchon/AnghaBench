
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ __sighandler_t ;
struct TYPE_3__ {int sa_flags; int sa_mask; scalar_t__ sa_handler; } ;
struct TYPE_4__ {TYPE_1__ sigact; } ;


 int SA_NODEFER ;
 int SA_RESETHAND ;
 int SA_SIGINFO ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGSEGV ;
 int SIGTERM ;
 scalar_t__ dump_sig_handler ;
 TYPE_2__ g ;
 scalar_t__ sigaction (int ,TYPE_1__*,int *) ;
 scalar_t__ sigemptyset (int *) ;

__attribute__((used)) static int init_sig(void)
{
 g.sigact.sa_flags = (SA_NODEFER | SA_SIGINFO | SA_RESETHAND);
 g.sigact.sa_handler = (__sighandler_t)dump_sig_handler;
 if (sigemptyset(&g.sigact.sa_mask) < 0)
  return -1;
 if (sigaction(SIGINT, &g.sigact, ((void*)0)) < 0)
  return -1;
 if (sigaction(SIGTERM, &g.sigact, ((void*)0)) < 0)
  return -1;
 if (sigaction(SIGPIPE, &g.sigact, ((void*)0)) < 0)
  return -1;
 if (sigaction(SIGABRT, &g.sigact, ((void*)0)) < 0)
  return -1;
 if (sigaction(SIGSEGV, &g.sigact, ((void*)0)) < 0)
  return -1;
 if (sigaction(SIGBUS, &g.sigact, ((void*)0)) < 0)
  return -1;

 return 0;
}
