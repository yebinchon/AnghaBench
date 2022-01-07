
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {int * s_active; TYPE_1__* dd; int flags; } ;
struct TYPE_2__ {unsigned int slot_groups; int dd_flag; } ;


 int EBUSY ;
 int EFAULT ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int MTIP_PF_ISSUE_CMDS_BIT ;
 int MTIP_PF_SVC_THD_ACTIVE_BIT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msleep (int) ;
 unsigned int readl (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int mtip_quiesce_io(struct mtip_port *port, unsigned long timeout)
{
 unsigned long to;
 unsigned int n;
 unsigned int active = 1;

 to = jiffies + msecs_to_jiffies(timeout);
 do {
  if (test_bit(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags) &&
   test_bit(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
   msleep(20);
   continue;
  }
  if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
   return -EFAULT;




  active = readl(port->s_active[0]) & 0xFFFFFFFE;
  for (n = 1; n < port->dd->slot_groups; n++)
   active |= readl(port->s_active[n]);

  if (!active)
   break;

  msleep(20);
 } while (time_before(jiffies, to));

 return active ? -EBUSY : 0;
}
