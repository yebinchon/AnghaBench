#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ dword ;
struct TYPE_4__ {int descriptor_number; scalar_t__ descriptor_magic; int /*<<< orphan*/  operation; int /*<<< orphan*/ * descriptor_address; } ;
struct TYPE_5__ {TYPE_1__ info; int /*<<< orphan*/  Rc; scalar_t__ Req; } ;
struct TYPE_6__ {TYPE_2__ xdi_dma_descriptor_operation; } ;
typedef  TYPE_3__ IDI_SYNC_REQ ;
typedef  int /*<<< orphan*/  (* IDI_CALL ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  ENTITY ;

/* Variables and functions */
 int /*<<< orphan*/  IDI_SYNC_REQ_DMA_DESCRIPTOR_ALLOC ; 
 int /*<<< orphan*/  IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1 (IDI_CALL request, dword *dma_magic) {
  ENTITY e;
  IDI_SYNC_REQ* pReq = (IDI_SYNC_REQ*)&e;

  if (!request) {
    return (-1);
  }

  pReq->xdi_dma_descriptor_operation.Req = 0;
  pReq->xdi_dma_descriptor_operation.Rc = IDI_SYNC_REQ_DMA_DESCRIPTOR_OPERATION;

  pReq->xdi_dma_descriptor_operation.info.operation =     IDI_SYNC_REQ_DMA_DESCRIPTOR_ALLOC;
  pReq->xdi_dma_descriptor_operation.info.descriptor_number  = -1;
  pReq->xdi_dma_descriptor_operation.info.descriptor_address = NULL;
  pReq->xdi_dma_descriptor_operation.info.descriptor_magic   = 0;

  (*request)((ENTITY*)pReq);

  if (!pReq->xdi_dma_descriptor_operation.info.operation &&
      (pReq->xdi_dma_descriptor_operation.info.descriptor_number >= 0) &&
      pReq->xdi_dma_descriptor_operation.info.descriptor_magic) {
    *dma_magic = pReq->xdi_dma_descriptor_operation.info.descriptor_magic;
    return (pReq->xdi_dma_descriptor_operation.info.descriptor_number);
  } else {
    return (-1);
  }
}