
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {int dxfer_direction; int duration; scalar_t__ cmd_len; scalar_t__ resid; scalar_t__ driver_status; scalar_t__ host_status; scalar_t__ info; scalar_t__ msg_status; scalar_t__ masked_status; scalar_t__ status; } ;
typedef TYPE_3__ sg_io_hdr_t ;
struct TYPE_19__ {int disk; TYPE_2__* device; scalar_t__ detached; } ;
struct TYPE_18__ {int f_ref; TYPE_6__* parentdp; } ;
struct TYPE_14__ {unsigned char cmd_opcode; } ;
struct TYPE_17__ {TYPE_11__* rq; scalar_t__ bio; TYPE_1__ data; TYPE_3__ header; } ;
struct TYPE_15__ {int request_queue; } ;
struct TYPE_13__ {int timeout; } ;
typedef TYPE_4__ Sg_request ;
typedef TYPE_5__ Sg_fd ;
typedef TYPE_6__ Sg_device ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int EIO ;
 int ENODEV ;
 int SCSI_LOG_TIMEOUT (int,int ) ;




 int blk_end_request_all (TYPE_11__*,int ) ;
 int blk_execute_rq_nowait (int ,int ,TYPE_11__*,int,int ) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int kref_get (int *) ;
 int printk (char*,int,...) ;
 int sg_finish_rem_req (TYPE_4__*) ;
 int sg_rq_end_io ;
 int sg_start_req (TYPE_4__*,unsigned char*) ;

__attribute__((used)) static int
sg_common_write(Sg_fd * sfp, Sg_request * srp,
  unsigned char *cmnd, int timeout, int blocking)
{
 int k, data_dir;
 Sg_device *sdp = sfp->parentdp;
 sg_io_hdr_t *hp = &srp->header;

 srp->data.cmd_opcode = cmnd[0];
 hp->status = 0;
 hp->masked_status = 0;
 hp->msg_status = 0;
 hp->info = 0;
 hp->host_status = 0;
 hp->driver_status = 0;
 hp->resid = 0;
 SCSI_LOG_TIMEOUT(4, printk("sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\n",
     (int) cmnd[0], (int) hp->cmd_len));

 k = sg_start_req(srp, cmnd);
 if (k) {
  SCSI_LOG_TIMEOUT(1, printk("sg_common_write: start_req err=%d\n", k));
  sg_finish_rem_req(srp);
  return k;
 }
 if (sdp->detached) {
  if (srp->bio)
   blk_end_request_all(srp->rq, -EIO);
  sg_finish_rem_req(srp);
  return -ENODEV;
 }

 switch (hp->dxfer_direction) {
 case 129:
 case 131:
  data_dir = DMA_FROM_DEVICE;
  break;
 case 130:
  data_dir = DMA_TO_DEVICE;
  break;
 case 128:
  data_dir = DMA_BIDIRECTIONAL;
  break;
 default:
  data_dir = DMA_NONE;
  break;
 }
 hp->duration = jiffies_to_msecs(jiffies);

 srp->rq->timeout = timeout;
 kref_get(&sfp->f_ref);
 blk_execute_rq_nowait(sdp->device->request_queue, sdp->disk,
         srp->rq, 1, sg_rq_end_io);
 return 0;
}
