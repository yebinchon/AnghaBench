
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int dummy; } ;
struct reverse_heartbeat {scalar_t__ stopped; int wait; } ;


 int init_waitqueue_head (int *) ;

void ibmasm_init_reverse_heartbeat(struct service_processor *sp, struct reverse_heartbeat *rhb)
{
 init_waitqueue_head(&rhb->wait);
 rhb->stopped = 0;
}
