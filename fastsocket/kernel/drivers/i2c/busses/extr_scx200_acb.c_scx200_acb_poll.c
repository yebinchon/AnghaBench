
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;
struct scx200_acb_iface {size_t state; int needs_reset; int result; TYPE_1__ adapter; } ;


 int ACBST ;
 int ACBST_BER ;
 int ACBST_NEGACK ;
 int ACBST_SDAST ;
 int EIO ;
 unsigned long POLL_TIMEOUT ;
 int cond_resched () ;
 int cpu_relax () ;
 int dev_err (int *,char*,int ) ;
 int inb (int ) ;
 unsigned long jiffies ;
 int outb (int ,int ) ;
 int scx200_acb_machine (struct scx200_acb_iface*,int) ;
 int * scx200_acb_state_name ;
 size_t state_idle ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void scx200_acb_poll(struct scx200_acb_iface *iface)
{
 u8 status;
 unsigned long timeout;

 timeout = jiffies + POLL_TIMEOUT;
 while (1) {
  status = inb(ACBST);


  outb(0, ACBST);

  if ((status & (ACBST_SDAST|ACBST_BER|ACBST_NEGACK)) != 0) {
   scx200_acb_machine(iface, status);
   return;
  }
  if (time_after(jiffies, timeout))
   break;
  cpu_relax();
  cond_resched();
 }

 dev_err(&iface->adapter.dev, "timeout in state %s\n",
  scx200_acb_state_name[iface->state]);

 iface->state = state_idle;
 iface->result = -EIO;
 iface->needs_reset = 1;
}
