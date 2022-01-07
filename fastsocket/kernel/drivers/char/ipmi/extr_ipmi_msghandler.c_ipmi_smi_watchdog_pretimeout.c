
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int recv_tasklet; int watchdog_pretimeouts_to_deliver; } ;


 int atomic_set (int *,int) ;
 int tasklet_schedule (int *) ;

void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf)
{
 atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
 tasklet_schedule(&intf->recv_tasklet);
}
