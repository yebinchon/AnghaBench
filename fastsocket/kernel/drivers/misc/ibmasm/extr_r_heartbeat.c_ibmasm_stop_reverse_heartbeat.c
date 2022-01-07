
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reverse_heartbeat {int stopped; int wait; } ;


 int wake_up_interruptible (int *) ;

void ibmasm_stop_reverse_heartbeat(struct reverse_heartbeat *rhb)
{
 rhb->stopped = 1;
 wake_up_interruptible(&rhb->wait);
}
