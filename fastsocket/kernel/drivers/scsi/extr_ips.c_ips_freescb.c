
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; struct TYPE_8__* q_next; int data_len; int data_busaddr; int scsi_cmd; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_9__ {int max_cmds; TYPE_1__* scb_freelist; int pcidev; } ;
typedef TYPE_2__ ips_ha_t ;


 int IPS_COMMAND_ID (TYPE_2__*,TYPE_1__*) ;
 int IPS_DMA_DIR (TYPE_1__*) ;
 int IPS_SCB_MAP_SG ;
 int IPS_SCB_MAP_SINGLE ;
 int METHOD_TRACE (char*,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int scsi_dma_unmap (int ) ;

__attribute__((used)) static void
ips_freescb(ips_ha_t * ha, ips_scb_t * scb)
{

 METHOD_TRACE("ips_freescb", 1);
 if (scb->flags & IPS_SCB_MAP_SG)
                scsi_dma_unmap(scb->scsi_cmd);
 else if (scb->flags & IPS_SCB_MAP_SINGLE)
  pci_unmap_single(ha->pcidev, scb->data_busaddr, scb->data_len,
     IPS_DMA_DIR(scb));


 if (IPS_COMMAND_ID(ha, scb) < (ha->max_cmds - 1)) {
  scb->q_next = ha->scb_freelist;
  ha->scb_freelist = scb;
 }
}
