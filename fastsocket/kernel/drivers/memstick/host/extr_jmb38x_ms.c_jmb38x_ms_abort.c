
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int lock; TYPE_3__* req; TYPE_2__* chip; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int ETIME ;
 int dev_dbg (int *,char*) ;
 int jmb38x_ms_complete_cmd (struct memstick_host*,int ) ;
 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void jmb38x_ms_abort(unsigned long data)
{
 struct memstick_host *msh = (struct memstick_host *)data;
 struct jmb38x_ms_host *host = memstick_priv(msh);
 unsigned long flags;

 dev_dbg(&host->chip->pdev->dev, "abort\n");
 spin_lock_irqsave(&host->lock, flags);
 if (host->req) {
  host->req->error = -ETIME;
  jmb38x_ms_complete_cmd(msh, 0);
 }
 spin_unlock_irqrestore(&host->lock, flags);
}
