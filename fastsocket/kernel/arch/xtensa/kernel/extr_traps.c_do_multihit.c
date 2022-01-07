
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGKILL ;
 int die (char*,struct pt_regs*,int ) ;

void do_multihit(struct pt_regs *regs, unsigned long exccause)
{
 die("Caught multihit exception", regs, SIGKILL);
}
