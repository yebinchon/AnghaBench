
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vio_dring_state {unsigned int cons; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct vio_disk_desc {int size; scalar_t__ status; TYPE_2__ hdr; int ncookies; int cookies; } ;
struct vdc_req_entry {struct request* req; } ;
struct TYPE_4__ {int lp; } ;
struct vdc_port {TYPE_3__* disk; TYPE_1__ vio; struct vdc_req_entry* rq_arr; } ;
struct request {int dummy; } ;
struct TYPE_6__ {int queue; } ;


 int EIO ;
 int VDC_TX_RING_SIZE ;
 scalar_t__ VIO_DESC_DONE ;
 scalar_t__ VIO_DESC_FREE ;
 int __blk_end_request (struct request*,int ,int ) ;
 scalar_t__ blk_queue_stopped (int ) ;
 int blk_start_queue (int ) ;
 int ldc_unmap (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vdc_end_special (struct vdc_port*,struct vio_disk_desc*) ;
 struct vio_disk_desc* vio_dring_entry (struct vio_dring_state*,unsigned int) ;

__attribute__((used)) static void vdc_end_one(struct vdc_port *port, struct vio_dring_state *dr,
   unsigned int index)
{
 struct vio_disk_desc *desc = vio_dring_entry(dr, index);
 struct vdc_req_entry *rqe = &port->rq_arr[index];
 struct request *req;

 if (unlikely(desc->hdr.state != VIO_DESC_DONE))
  return;

 ldc_unmap(port->vio.lp, desc->cookies, desc->ncookies);
 desc->hdr.state = VIO_DESC_FREE;
 dr->cons = (index + 1) & (VDC_TX_RING_SIZE - 1);

 req = rqe->req;
 if (req == ((void*)0)) {
  vdc_end_special(port, desc);
  return;
 }

 rqe->req = ((void*)0);

 __blk_end_request(req, (desc->status ? -EIO : 0), desc->size);

 if (blk_queue_stopped(port->disk->queue))
  blk_start_queue(port->disk->queue);
}
