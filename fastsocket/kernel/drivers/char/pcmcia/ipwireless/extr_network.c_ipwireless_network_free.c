
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int shutting_down; int hardware; } ;


 int flush_scheduled_work () ;
 int ipwireless_associate_network (int ,int *) ;
 int ipwireless_ppp_close (struct ipw_network*) ;
 int ipwireless_stop_interrupts (int ) ;
 int kfree (struct ipw_network*) ;

void ipwireless_network_free(struct ipw_network *network)
{
 network->shutting_down = 1;

 ipwireless_ppp_close(network);
 flush_scheduled_work();

 ipwireless_stop_interrupts(network->hardware);
 ipwireless_associate_network(network->hardware, ((void*)0));

 kfree(network);
}
