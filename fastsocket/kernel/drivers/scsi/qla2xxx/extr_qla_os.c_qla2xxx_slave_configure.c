
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ tagged_supported; int request_queue; int host; } ;
struct req_que {int max_q_depth; } ;
struct TYPE_3__ {int hw; struct req_que* req; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_T10_PI_CAPABLE (int ) ;
 int blk_queue_update_dma_alignment (int ,int) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int ) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static int
qla2xxx_slave_configure(struct scsi_device *sdev)
{
 scsi_qla_host_t *vha = shost_priv(sdev->host);
 struct req_que *req = vha->req;

 if (IS_T10_PI_CAPABLE(vha->hw))
  blk_queue_update_dma_alignment(sdev->request_queue, 0x7);

 if (sdev->tagged_supported)
  scsi_activate_tcq(sdev, req->max_q_depth);
 else
  scsi_deactivate_tcq(sdev, req->max_q_depth);
 return 0;
}
