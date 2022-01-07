
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;
typedef int __sighandler_t ;


 int PRINT_ERR (char*,...) ;
 int terminate () ;

__attribute__((used)) static __sighandler_t dump_sig_handler(int sig, siginfo_t *sip, void*p)
{
 PRINT_ERR("Got signal: %i\n", sig);
 PRINT_ERR("Dump failed!\n");
 terminate();
 return 0;
}
