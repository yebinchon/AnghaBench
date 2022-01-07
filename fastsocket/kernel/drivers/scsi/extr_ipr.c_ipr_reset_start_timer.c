
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ipr_cmnd {TYPE_2__ timer; int done; TYPE_1__* hrrq; int queue; } ;
struct TYPE_3__ {int hrrq_pending_q; } ;


 int ENTER ;
 int add_timer (TYPE_2__*) ;
 int ipr_reset_ioa_job ;
 scalar_t__ ipr_reset_timer_done ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ipr_reset_start_timer(struct ipr_cmnd *ipr_cmd,
      unsigned long timeout)
{

 ENTER;
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);
 ipr_cmd->done = ipr_reset_ioa_job;

 ipr_cmd->timer.data = (unsigned long) ipr_cmd;
 ipr_cmd->timer.expires = jiffies + timeout;
 ipr_cmd->timer.function = (void (*)(unsigned long))ipr_reset_timer_done;
 add_timer(&ipr_cmd->timer);
}
