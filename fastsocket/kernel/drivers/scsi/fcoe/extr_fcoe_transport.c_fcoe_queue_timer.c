
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct fc_lport {int dummy; } ;


 int fcoe_check_wait_queue (struct fc_lport*,int *) ;

void fcoe_queue_timer(ulong lport)
{
 fcoe_check_wait_queue((struct fc_lport *)lport, ((void*)0));
}
