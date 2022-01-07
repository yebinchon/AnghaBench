
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_done; int cmd_wait; } ;
struct ocrdma_dev {TYPE_1__ mqe_ctx; } ;


 int msecs_to_jiffies (int) ;
 long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ocrdma_wait_mqe_cmpl(struct ocrdma_dev *dev)
{
 long status;

 status = wait_event_timeout(dev->mqe_ctx.cmd_wait,
        (dev->mqe_ctx.cmd_done != 0),
        msecs_to_jiffies(30000));
 if (status)
  return 0;
 else
  return -1;
}
