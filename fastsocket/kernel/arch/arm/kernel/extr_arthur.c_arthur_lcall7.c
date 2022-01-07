
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {int si_errno; int si_signo; } ;
struct pt_regs {int dummy; } ;


 int SIGSWI ;
 int current ;
 int send_sig_info (int ,struct siginfo*,int ) ;

__attribute__((used)) static void arthur_lcall7(int nr, struct pt_regs *regs)
{
 struct siginfo info;
 info.si_signo = SIGSWI;
 info.si_errno = nr;

 send_sig_info(SIGSWI, &info, current);
}
