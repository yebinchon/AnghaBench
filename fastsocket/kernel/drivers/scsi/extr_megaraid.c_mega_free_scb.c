
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dma_type; int list; int * cmd; int state; } ;
typedef TYPE_1__ scb_t ;
struct TYPE_6__ {int free_list; } ;
typedef TYPE_2__ adapter_t ;




 int SCB_FREE ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int scsi_dma_unmap (int *) ;

__attribute__((used)) static void
mega_free_scb(adapter_t *adapter, scb_t *scb)
{
 switch( scb->dma_type ) {

 case 129:
  break;

 case 128:
  scsi_dma_unmap(scb->cmd);
  break;
 default:
  break;
 }




 list_del_init(&scb->list);


 scb->state = SCB_FREE;
 scb->cmd = ((void*)0);

 list_add(&scb->list, &adapter->free_list);
}
