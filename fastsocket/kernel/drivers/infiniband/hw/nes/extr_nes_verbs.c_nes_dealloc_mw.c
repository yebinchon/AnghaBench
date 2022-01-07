
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_mr {int dummy; } ;
struct nes_hw_cqp_wqe {int wqe_words; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; scalar_t__ major_code; int minor_code; int waitq; int refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct nes_adapter {int allocated_mrs; } ;
struct ib_mw {int rkey; int device; } ;


 int EIO ;
 int ENOMEM ;
 int ETIME ;
 int NES_CQP_DEALLOCATE_STAG ;
 int NES_CQP_STAG_WQE_STAG_IDX ;
 int NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_MR ;
 int NES_EVENT_TIMEOUT ;
 int atomic_set (int *,int) ;
 int kfree (struct nes_mr*) ;
 int nes_debug (int ,char*,...) ;
 int nes_fill_init_cqp_wqe (struct nes_hw_cqp_wqe*,struct nes_device*) ;
 int nes_free_resource (struct nes_adapter*,int ,int) ;
 struct nes_cqp_request* nes_get_cqp_request (struct nes_device*) ;
 int nes_post_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int nes_put_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int set_wqe_32bit_value (int ,int ,int) ;
 struct nes_mr* to_nesmw (struct ib_mw*) ;
 struct nes_vnic* to_nesvnic (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int nes_dealloc_mw(struct ib_mw *ibmw)
{
 struct nes_mr *nesmr = to_nesmw(ibmw);
 struct nes_vnic *nesvnic = to_nesvnic(ibmw->device);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 struct nes_hw_cqp_wqe *cqp_wqe;
 struct nes_cqp_request *cqp_request;
 int err = 0;
 int ret;


 cqp_request = nes_get_cqp_request(nesdev);
 if (cqp_request == ((void*)0)) {
  nes_debug(NES_DBG_MR, "Failed to get a cqp_request.\n");
  return -ENOMEM;
 }
 cqp_request->waiting = 1;
 cqp_wqe = &cqp_request->cqp_wqe;
 nes_fill_init_cqp_wqe(cqp_wqe, nesdev);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, NES_CQP_DEALLOCATE_STAG);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_STAG_IDX, ibmw->rkey);

 atomic_set(&cqp_request->refcount, 2);
 nes_post_cqp_request(nesdev, cqp_request);


 nes_debug(NES_DBG_MR, "Waiting for deallocate STag 0x%08X to complete.\n",
   ibmw->rkey);
 ret = wait_event_timeout(cqp_request->waitq, (0 != cqp_request->request_done),
   NES_EVENT_TIMEOUT);
 nes_debug(NES_DBG_MR, "Deallocate STag completed, wait_event_timeout ret = %u,"
   " CQP Major:Minor codes = 0x%04X:0x%04X.\n",
   ret, cqp_request->major_code, cqp_request->minor_code);
 if (!ret)
  err = -ETIME;
 else if (cqp_request->major_code)
  err = -EIO;

 nes_put_cqp_request(nesdev, cqp_request);

 nes_free_resource(nesadapter, nesadapter->allocated_mrs,
   (ibmw->rkey & 0x0fffff00) >> 8);
 kfree(nesmr);

 return err;
}
