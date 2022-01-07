
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ipr_cmnd {void (* done ) (struct ipr_cmnd*) ;TYPE_2__ timer; TYPE_1__* hrrq; int queue; } ;
struct TYPE_3__ {int hrrq_pending_q; } ;


 int IPR_TRACE_START ;
 int add_timer (TYPE_2__*) ;
 int ipr_send_command (struct ipr_cmnd*) ;
 int ipr_trc_hook (struct ipr_cmnd*,int ,int ) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ipr_do_req(struct ipr_cmnd *ipr_cmd,
         void (*done) (struct ipr_cmnd *),
         void (*timeout_func) (struct ipr_cmnd *), u32 timeout)
{
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);

 ipr_cmd->done = done;

 ipr_cmd->timer.data = (unsigned long) ipr_cmd;
 ipr_cmd->timer.expires = jiffies + timeout;
 ipr_cmd->timer.function = (void (*)(unsigned long))timeout_func;

 add_timer(&ipr_cmd->timer);

 ipr_trc_hook(ipr_cmd, IPR_TRACE_START, 0);

 ipr_send_command(ipr_cmd);
}
