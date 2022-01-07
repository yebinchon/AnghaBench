
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* synic_message_page; scalar_t__* synic_event_page; int * event_dpc; } ;


 int free_page (unsigned long) ;
 TYPE_1__ hv_context ;
 int kfree (int ) ;

void hv_synic_free_cpu(int cpu)
{
 kfree(hv_context.event_dpc[cpu]);
 if (hv_context.synic_message_page[cpu])
  free_page((unsigned long)hv_context.synic_event_page[cpu]);
 if (hv_context.synic_message_page[cpu])
  free_page((unsigned long)hv_context.synic_message_page[cpu]);
}
