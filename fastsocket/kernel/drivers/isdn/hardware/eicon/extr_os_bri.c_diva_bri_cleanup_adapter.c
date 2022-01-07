
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int * object; } ;
struct TYPE_12__ {scalar_t__ registered; int irq_nr; } ;
struct TYPE_15__ {int * e_tbl; int data_spin_lock; int isr_spin_lock; TYPE_6__ isr_soft_isr; TYPE_6__ req_soft_isr; TYPE_1__ irq_info; scalar_t__ Initialized; } ;
struct TYPE_13__ {scalar_t__* bar; int ** addr; int * length; } ;
struct TYPE_14__ {TYPE_2__ pci; } ;
struct TYPE_16__ {TYPE_4__ xdi_adapter; TYPE_3__ resources; int * port_name; } ;
typedef TYPE_5__ diva_os_xdi_adapter_t ;


 int diva_bri_stop_adapter (TYPE_5__*) ;
 int diva_os_cancel_soft_isr (TYPE_6__*) ;
 int diva_os_destroy_spin_lock (int *,char*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_register_io_port (TYPE_5__*,int ,scalar_t__,int ,int *,int) ;
 int diva_os_remove_irq (TYPE_5__*,int ) ;
 int diva_os_remove_soft_isr (TYPE_6__*) ;
 int divasa_unmap_pci_bar (int *) ;

__attribute__((used)) static int diva_bri_cleanup_adapter(diva_os_xdi_adapter_t * a)
{
 int i;

 if (a->xdi_adapter.Initialized) {
  diva_bri_stop_adapter(a);
 }




 if (a->xdi_adapter.irq_info.registered) {
  diva_os_remove_irq(a, a->xdi_adapter.irq_info.irq_nr);
 }
 a->xdi_adapter.irq_info.registered = 0;

 if (a->resources.pci.addr[0] && a->resources.pci.bar[0]) {
  divasa_unmap_pci_bar(a->resources.pci.addr[0]);
  a->resources.pci.addr[0] = ((void*)0);
  a->resources.pci.bar[0] = 0;
 }

 for (i = 1; i < 3; i++) {
  if (a->resources.pci.addr[i] && a->resources.pci.bar[i]) {
   diva_os_register_io_port(a, 0,
       a->resources.pci.bar[i],
       a->resources.pci.
       length[i],
       &a->port_name[0], i);
   a->resources.pci.addr[i] = ((void*)0);
   a->resources.pci.bar[i] = 0;
  }
 }




 diva_os_cancel_soft_isr(&a->xdi_adapter.req_soft_isr);
 diva_os_cancel_soft_isr(&a->xdi_adapter.isr_soft_isr);

 diva_os_remove_soft_isr(&a->xdi_adapter.req_soft_isr);
 a->xdi_adapter.isr_soft_isr.object = ((void*)0);

 diva_os_destroy_spin_lock(&a->xdi_adapter.isr_spin_lock, "rm");
 diva_os_destroy_spin_lock(&a->xdi_adapter.data_spin_lock, "rm");




 if (a->xdi_adapter.e_tbl) {
  diva_os_free(0, a->xdi_adapter.e_tbl);
  a->xdi_adapter.e_tbl = ((void*)0);
 }

 return (0);
}
