
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BUS_ADRERR ;
 int SEGV_ACCERR ;
 int SIGBUS ;
 int SIGSEGV ;
 int _exception (int ,struct pt_regs*,int ,unsigned long) ;
 int bad_page_fault (struct pt_regs*,unsigned long,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void low_hash_fault(struct pt_regs *regs, unsigned long address, int rc)
{
 if (user_mode(regs)) {





   _exception(SIGBUS, regs, BUS_ADRERR, address);
 } else
  bad_page_fault(regs, address, SIGBUS);
}
