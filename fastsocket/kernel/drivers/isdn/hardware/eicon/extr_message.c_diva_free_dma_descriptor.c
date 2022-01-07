
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__* user; } ;
struct TYPE_10__ {int descriptor_number; int operation; scalar_t__ descriptor_magic; int * descriptor_address; } ;
struct TYPE_11__ {TYPE_2__ info; int Rc; scalar_t__ Req; } ;
struct TYPE_13__ {TYPE_3__ xdi_dma_descriptor_operation; } ;
struct TYPE_12__ {TYPE_1__* adapter; } ;
struct TYPE_9__ {int (* request ) (TYPE_6__*) ;scalar_t__ Id; } ;
typedef TYPE_4__ PLCI ;
typedef TYPE_5__ IDI_SYNC_REQ ;
typedef TYPE_6__ ENTITY ;


 int IDI_SYNC_REQ_DMA_DESCRIPTOR_FREE ;
 int IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION ;
 int dbug (int,int ) ;
 int dprintf (char*,int) ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static void diva_free_dma_descriptor (PLCI *plci, int nr) {
  ENTITY e;
  IDI_SYNC_REQ* pReq = (IDI_SYNC_REQ*)&e;

  if (nr < 0) {
    return;
  }

  pReq->xdi_dma_descriptor_operation.Req = 0;
  pReq->xdi_dma_descriptor_operation.Rc = IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION;

  pReq->xdi_dma_descriptor_operation.info.operation = IDI_SYNC_REQ_DMA_DESCRIPTOR_FREE;
  pReq->xdi_dma_descriptor_operation.info.descriptor_number = nr;
  pReq->xdi_dma_descriptor_operation.info.descriptor_address = ((void*)0);
  pReq->xdi_dma_descriptor_operation.info.descriptor_magic = 0;

  e.user[0] = plci->adapter->Id - 1;
  plci->adapter->request((ENTITY*)pReq);

  if (!pReq->xdi_dma_descriptor_operation.info.operation) {
    dbug(1,dprintf("dma_free(%d)", nr));
  } else {
    dbug(1,dprintf("dma_free failed (%d)", nr));
  }
}
