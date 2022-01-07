
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {long* gr; } ;


 long EIO ;


 long PT_FR0 ;
 int PT_FR31 ;
 long PT_GR1 ;
 long PT_GR31 ;
 long PT_IAOQ0 ;
 long PT_IAOQ1 ;
 long PT_PSW ;
 long PT_SAR ;
 long USER_PSW_BITS ;
 long ptrace_request (struct task_struct*,long,long,long) ;
 long put_user (unsigned long,unsigned long*) ;
 TYPE_1__* task_regs (struct task_struct*) ;

long arch_ptrace(struct task_struct *child, long request, long addr, long data)
{
 unsigned long tmp;
 long ret = -EIO;

 switch (request) {



 case 129:
  if ((addr & (sizeof(long)-1)) ||
      (unsigned long) addr >= sizeof(struct pt_regs))
   break;
  tmp = *(unsigned long *) ((char *) task_regs(child) + addr);
  ret = put_user(tmp, (unsigned long *) data);
  break;







 case 128:




  if (addr == PT_PSW) {





   data &= USER_PSW_BITS;
   task_regs(child)->gr[0] &= ~USER_PSW_BITS;
   task_regs(child)->gr[0] |= data;
   ret = 0;
   break;
  }

  if ((addr & (sizeof(long)-1)) ||
      (unsigned long) addr >= sizeof(struct pt_regs))
   break;
  if ((addr >= PT_GR1 && addr <= PT_GR31) ||
    addr == PT_IAOQ0 || addr == PT_IAOQ1 ||
    (addr >= PT_FR0 && addr <= PT_FR31 + 4) ||
    addr == PT_SAR) {
   *(unsigned long *) ((char *) task_regs(child) + addr) = data;
   ret = 0;
  }
  break;

 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }

 return ret;
}
