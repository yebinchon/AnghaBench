
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int cmd_busy; int queue; } ;


 int ctrl_dbg (struct controller*,char*) ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int pcie_poll_cmd (struct controller*) ;
 scalar_t__ pciehp_poll_mode ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static void pcie_wait_cmd(struct controller *ctrl, int poll)
{
 unsigned int msecs = pciehp_poll_mode ? 2500 : 1000;
 unsigned long timeout = msecs_to_jiffies(msecs);
 int rc;

 if (poll)
  rc = pcie_poll_cmd(ctrl);
 else
  rc = wait_event_timeout(ctrl->queue, !ctrl->cmd_busy, timeout);
 if (!rc)
  ctrl_dbg(ctrl, "Command not completed in 1000 msec\n");
}
