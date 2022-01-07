
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGABRT ;
 int die (char*,struct pt_regs*,int ) ;

void SMIException(struct pt_regs *regs)
{
 die("System Management Interrupt", regs, SIGABRT);
}
