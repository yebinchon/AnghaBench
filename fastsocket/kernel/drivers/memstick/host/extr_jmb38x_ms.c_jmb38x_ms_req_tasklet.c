
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int lock; TYPE_2__* chip; int req; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 scalar_t__ jmb38x_ms_issue_cmd (struct memstick_host*) ;
 int memstick_next_req (struct memstick_host*,int *) ;
 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void jmb38x_ms_req_tasklet(unsigned long data)
{
 struct memstick_host *msh = (struct memstick_host *)data;
 struct jmb38x_ms_host *host = memstick_priv(msh);
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&host->lock, flags);
 if (!host->req) {
  do {
   rc = memstick_next_req(msh, &host->req);
   dev_dbg(&host->chip->pdev->dev, "tasklet req %d\n", rc);
  } while (!rc && jmb38x_ms_issue_cmd(msh));
 }
 spin_unlock_irqrestore(&host->lock, flags);
}
