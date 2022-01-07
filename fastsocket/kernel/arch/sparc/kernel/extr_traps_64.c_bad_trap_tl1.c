
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl1_traplog {int dummy; } ;
struct pt_regs {int dummy; } ;


 int DIE_TRAP_TL1 ;
 scalar_t__ NOTIFY_STOP ;
 int SIGTRAP ;
 int die_if_kernel (char*,struct pt_regs*) ;
 int dump_tl1_traplog (struct tl1_traplog*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int ,long,int ) ;
 int sprintf (char*,char*,long) ;

void bad_trap_tl1(struct pt_regs *regs, long lvl)
{
 char buffer[32];

 if (notify_die(DIE_TRAP_TL1, "bad trap tl1", regs,
         0, lvl, SIGTRAP) == NOTIFY_STOP)
  return;

 dump_tl1_traplog((struct tl1_traplog *)(regs + 1));

 sprintf (buffer, "Bad trap %lx at tl>0", lvl);
 die_if_kernel (buffer, regs);
}
