
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* message_pass ) (int,int ) ;} ;


 int PPC_MSG_RESCHEDULE ;
 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* smp_ops ;
 int stub1 (int,int ) ;

void smp_send_reschedule(int cpu)
{
 if (likely(smp_ops))
  smp_ops->message_pass(cpu, PPC_MSG_RESCHEDULE);
}
