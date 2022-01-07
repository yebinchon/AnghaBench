
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int descriptor_number; scalar_t__ descriptor_magic; int * descriptor_address; int operation; } ;
struct TYPE_5__ {TYPE_1__ info; int Rc; scalar_t__ Req; } ;
struct TYPE_6__ {TYPE_2__ xdi_dma_descriptor_operation; } ;
typedef TYPE_3__ IDI_SYNC_REQ ;
typedef int (* IDI_CALL ) (int *) ;
typedef int ENTITY ;


 int IDI_SYNC_REQ_DMA_DESCRIPTOR_FREE ;
 int IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION ;
 int stub1 (int *) ;

__attribute__((used)) static void diva_free_dma_descriptor (IDI_CALL request, int nr) {
  ENTITY e;
  IDI_SYNC_REQ* pReq = (IDI_SYNC_REQ*)&e;

  if (!request || (nr < 0)) {
    return;
  }

  pReq->xdi_dma_descriptor_operation.Req = 0;
  pReq->xdi_dma_descriptor_operation.Rc = IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION;

  pReq->xdi_dma_descriptor_operation.info.operation = IDI_SYNC_REQ_DMA_DESCRIPTOR_FREE;
  pReq->xdi_dma_descriptor_operation.info.descriptor_number = nr;
  pReq->xdi_dma_descriptor_operation.info.descriptor_address = ((void*)0);
  pReq->xdi_dma_descriptor_operation.info.descriptor_magic = 0;

  (*request)((ENTITY*)pReq);
}
