
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fcoe_bd_ctx {int dummy; } ;
struct bnx2fc_mp_req {int * resp_buf; int resp_buf_dma; int * req_buf; int req_buf_dma; int * mp_resp_bd; int mp_resp_bd_dma; int * mp_req_bd; int mp_req_bd_dma; scalar_t__ tm_flags; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {TYPE_2__* pcidev; } ;
struct bnx2fc_cmd {TYPE_1__* port; struct bnx2fc_mp_req mp_req; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct bnx2fc_interface* priv; } ;


 size_t PAGE_SIZE ;
 int dma_free_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static void bnx2fc_free_mp_resc(struct bnx2fc_cmd *io_req)
{
 struct bnx2fc_mp_req *mp_req = &(io_req->mp_req);
 struct bnx2fc_interface *interface = io_req->port->priv;
 struct bnx2fc_hba *hba = interface->hba;
 size_t sz = sizeof(struct fcoe_bd_ctx);


 mp_req->tm_flags = 0;
 if (mp_req->mp_req_bd) {
  dma_free_coherent(&hba->pcidev->dev, sz,
         mp_req->mp_req_bd,
         mp_req->mp_req_bd_dma);
  mp_req->mp_req_bd = ((void*)0);
 }
 if (mp_req->mp_resp_bd) {
  dma_free_coherent(&hba->pcidev->dev, sz,
         mp_req->mp_resp_bd,
         mp_req->mp_resp_bd_dma);
  mp_req->mp_resp_bd = ((void*)0);
 }
 if (mp_req->req_buf) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
         mp_req->req_buf,
         mp_req->req_buf_dma);
  mp_req->req_buf = ((void*)0);
 }
 if (mp_req->resp_buf) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
         mp_req->resp_buf,
         mp_req->resp_buf_dma);
  mp_req->resp_buf = ((void*)0);
 }
}
