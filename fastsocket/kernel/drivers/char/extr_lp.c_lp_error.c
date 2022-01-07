
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* dev; int waitq; } ;
struct TYPE_7__ {TYPE_1__* port; } ;
struct TYPE_6__ {scalar_t__ irq; } ;


 int DEFINE_WAIT (int ) ;
 int LP_ABORT ;
 int LP_F (int) ;
 int LP_TIMEOUT_POLLED ;
 scalar_t__ PARPORT_IRQ_NONE ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int lp_claim_parport_or_block (TYPE_3__*) ;
 int lp_release_parport (TYPE_3__*) ;
 TYPE_3__* lp_table ;
 int parport_yield_blocking (TYPE_2__*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int ) ;
 int wait ;

__attribute__((used)) static void lp_error (int minor)
{
 DEFINE_WAIT(wait);
 int polling;

 if (LP_F(minor) & LP_ABORT)
  return;

 polling = lp_table[minor].dev->port->irq == PARPORT_IRQ_NONE;
 if (polling) lp_release_parport (&lp_table[minor]);
 prepare_to_wait(&lp_table[minor].waitq, &wait, TASK_INTERRUPTIBLE);
 schedule_timeout(LP_TIMEOUT_POLLED);
 finish_wait(&lp_table[minor].waitq, &wait);
 if (polling) lp_claim_parport_or_block (&lp_table[minor]);
 else parport_yield_blocking (lp_table[minor].dev);
}
