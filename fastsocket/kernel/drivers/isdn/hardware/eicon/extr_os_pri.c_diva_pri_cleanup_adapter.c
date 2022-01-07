
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct _diva_dma_map_entry {int dummy; } ;
struct TYPE_16__ {int * object; } ;
struct TYPE_11__ {scalar_t__ registered; int irq_nr; } ;
struct TYPE_14__ {int * dma_map; scalar_t__ e_max; scalar_t__ Channels; int * e_tbl; int data_spin_lock; int isr_spin_lock; TYPE_8__ isr_soft_isr; TYPE_8__ req_soft_isr; TYPE_1__ irq_info; scalar_t__ Initialized; } ;
struct TYPE_12__ {int hdev; int ** addr; scalar_t__* bar; } ;
struct TYPE_13__ {TYPE_2__ pci; } ;
struct TYPE_15__ {TYPE_4__ xdi_adapter; TYPE_3__ resources; } ;
typedef TYPE_5__ diva_os_xdi_adapter_t ;


 int diva_free_dma_map (int ,struct _diva_dma_map_entry*) ;
 int diva_os_cancel_soft_isr (TYPE_8__*) ;
 int diva_os_destroy_spin_lock (int *,char*) ;
 int diva_os_free (int ,int *) ;
 int diva_os_remove_irq (TYPE_5__*,int ) ;
 int diva_os_remove_soft_isr (TYPE_8__*) ;
 int diva_pri_stop_adapter (TYPE_5__*) ;
 int divasa_unmap_pci_bar (int *) ;

__attribute__((used)) static int diva_pri_cleanup_adapter(diva_os_xdi_adapter_t * a)
{
 int bar = 0;




 if (a->xdi_adapter.Initialized) {
  diva_pri_stop_adapter(a);
 }




 if (a->xdi_adapter.irq_info.registered) {
  diva_os_remove_irq(a, a->xdi_adapter.irq_info.irq_nr);
 }
 a->xdi_adapter.irq_info.registered = 0;




 for (bar = 0; bar < 5; bar++) {
  if (a->resources.pci.bar[bar]
      && a->resources.pci.addr[bar]) {
   divasa_unmap_pci_bar(a->resources.pci.addr[bar]);
   a->resources.pci.bar[bar] = 0;
   a->resources.pci.addr[bar] = ((void*)0);
  }
 }




 diva_os_cancel_soft_isr(&a->xdi_adapter.isr_soft_isr);
 diva_os_cancel_soft_isr(&a->xdi_adapter.req_soft_isr);

 diva_os_remove_soft_isr(&a->xdi_adapter.req_soft_isr);
 a->xdi_adapter.isr_soft_isr.object = ((void*)0);

 diva_os_destroy_spin_lock(&a->xdi_adapter.isr_spin_lock, "rm");
 diva_os_destroy_spin_lock(&a->xdi_adapter.data_spin_lock, "rm");




 if (a->xdi_adapter.e_tbl) {
  diva_os_free(0, a->xdi_adapter.e_tbl);
  a->xdi_adapter.e_tbl = ((void*)0);
 }
 a->xdi_adapter.Channels = 0;
 a->xdi_adapter.e_max = 0;





 diva_free_dma_map(a->resources.pci.hdev,
     (struct _diva_dma_map_entry *) a->xdi_adapter.
     dma_map);
 a->xdi_adapter.dma_map = ((void*)0);






 return (0);
}
