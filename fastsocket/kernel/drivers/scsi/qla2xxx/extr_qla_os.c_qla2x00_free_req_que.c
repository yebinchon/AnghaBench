
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct req_que {int length_fx00; int length; struct req_que* outstanding_cmds; int dma; scalar_t__ ring; int dma_fx00; scalar_t__ ring_fx00; } ;
struct qla_hw_data {TYPE_1__* pdev; } ;
typedef int request_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (struct req_que*) ;

__attribute__((used)) static void qla2x00_free_req_que(struct qla_hw_data *ha, struct req_que *req)
{
 if (IS_QLAFX00(ha)) {
  if (req && req->ring_fx00)
   dma_free_coherent(&ha->pdev->dev,
       (req->length_fx00 + 1) * sizeof(request_t),
       req->ring_fx00, req->dma_fx00);
 } else if (req && req->ring)
  dma_free_coherent(&ha->pdev->dev,
  (req->length + 1) * sizeof(request_t),
  req->ring, req->dma);

 if (req && req->outstanding_cmds)
  kfree(req->outstanding_cmds);

 kfree(req);
 req = ((void*)0);
}
