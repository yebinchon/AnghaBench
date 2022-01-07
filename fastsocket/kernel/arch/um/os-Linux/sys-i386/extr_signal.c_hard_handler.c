
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;


 int handle_signal (int,struct sigcontext*) ;

void hard_handler(int sig)
{
 handle_signal(sig, (struct sigcontext *) (&sig + 1));
}
