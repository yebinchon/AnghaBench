
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int ** addr; scalar_t__* bar; } ;
struct TYPE_14__ {TYPE_3__ pci; } ;
struct TYPE_11__ {scalar_t__ registered; int irq_nr; } ;
struct TYPE_12__ {TYPE_1__ irq_info; scalar_t__ Initialized; } ;
struct TYPE_15__ {int * slave_list; TYPE_4__ resources; int * port_name; int CardOrdinal; TYPE_2__ xdi_adapter; } ;
typedef TYPE_5__ diva_os_xdi_adapter_t ;


 int * _4bri_bar_length ;
 scalar_t__ _4bri_is_rev_2_card (int ) ;
 int * _4bri_v2_bar_length ;
 int diva_4bri_cleanup_slave_adapters (TYPE_5__*) ;
 int diva_4bri_stop_adapter (TYPE_5__*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_register_io_port (TYPE_5__*,int ,scalar_t__,int ,int *,int) ;
 int diva_os_remove_irq (TYPE_5__*,int ) ;
 int divasa_unmap_pci_bar (int *) ;

__attribute__((used)) static int diva_4bri_cleanup_adapter(diva_os_xdi_adapter_t * a)
{
 int bar;




 if (a->xdi_adapter.Initialized) {
  diva_4bri_stop_adapter(a);
 }




 if (a->xdi_adapter.irq_info.registered) {
  diva_os_remove_irq(a, a->xdi_adapter.irq_info.irq_nr);
 }
 a->xdi_adapter.irq_info.registered = 0;




 diva_4bri_cleanup_slave_adapters(a);




 for (bar = 0; bar < 4; bar++) {
  if (bar != 1) {
   if (a->resources.pci.bar[bar]
       && a->resources.pci.addr[bar]) {
    divasa_unmap_pci_bar(a->resources.pci.addr[bar]);
    a->resources.pci.bar[bar] = 0;
    a->resources.pci.addr[bar] = ((void*)0);
   }
  }
 }




 if (a->resources.pci.bar[1] && a->resources.pci.addr[1]) {
  diva_os_register_io_port(a, 0, a->resources.pci.bar[1],
      _4bri_is_rev_2_card(a->
            CardOrdinal) ?
      _4bri_v2_bar_length[1] :
      _4bri_bar_length[1],
      &a->port_name[0], 1);
  a->resources.pci.bar[1] = 0;
  a->resources.pci.addr[1] = ((void*)0);
 }

 if (a->slave_list) {
  diva_os_free(0, a->slave_list);
  a->slave_list = ((void*)0);
 }

 return (0);
}
