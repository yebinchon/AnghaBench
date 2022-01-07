
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGWINCH ;
 int SIG_IGN ;
 int signal (int ,int ) ;

void ignore_sigwinch_sig(void)
{
 signal(SIGWINCH, SIG_IGN);
}
