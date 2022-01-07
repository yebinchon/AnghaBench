
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nes_vnic {TYPE_2__* netdev; struct nes_ib_device* nesibdev; struct nes_device* nesdev; } ;
struct TYPE_7__ {int device; } ;
struct nes_qp {scalar_t__ cm_node; int ietf_frame_pbase; int ietf_frame; scalar_t__ ietf_frame_size; scalar_t__ private_data_len; int lsmm_mr; scalar_t__ active_conn; TYPE_1__ ibqp; } ;
struct TYPE_9__ {int (* dereg_mr ) (int ) ;} ;
struct nes_ib_device {TYPE_3__ ibdev; } ;
struct nes_device {int pcidev; } ;
struct TYPE_11__ {TYPE_4__* api; } ;
struct TYPE_10__ {int (* close ) (TYPE_5__*,scalar_t__) ;} ;
struct TYPE_8__ {int refcnt; } ;


 int EINVAL ;
 int NES_DBG_CM ;
 int atomic_read (int *) ;
 TYPE_5__* g_cm_core ;
 int nes_debug (int ,char*,...) ;
 int pci_free_consistent (int ,scalar_t__,int ,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_5__*,scalar_t__) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static int nes_disconnect(struct nes_qp *nesqp, int abrupt)
{
 int ret = 0;
 struct nes_vnic *nesvnic;
 struct nes_device *nesdev;
 struct nes_ib_device *nesibdev;

 nesvnic = to_nesvnic(nesqp->ibqp.device);
 if (!nesvnic)
  return -EINVAL;

 nesdev = nesvnic->nesdev;
 nesibdev = nesvnic->nesibdev;

 nes_debug(NES_DBG_CM, "netdev refcnt = %u.\n",
   atomic_read(&nesvnic->netdev->refcnt));

 if (nesqp->active_conn) {


  nesqp->active_conn = 0;
 } else {

  if (nesqp->ietf_frame) {
   if (nesqp->lsmm_mr)
    nesibdev->ibdev.dereg_mr(nesqp->lsmm_mr);
   pci_free_consistent(nesdev->pcidev,
         nesqp->private_data_len + nesqp->ietf_frame_size,
         nesqp->ietf_frame, nesqp->ietf_frame_pbase);
  }
 }


 if (nesqp->cm_node) {
  nes_debug(NES_DBG_CM, "Call close API\n");

  g_cm_core->api->close(g_cm_core, nesqp->cm_node);
 }

 return ret;
}
