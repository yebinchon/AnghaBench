
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct scsi_qla_host {TYPE_1__* hw; } ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct TYPE_2__ {int hardware_lock; } ;


 int __qla2x00_marker (struct scsi_qla_host*,struct req_que*,struct rsp_que*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
qla2x00_marker(struct scsi_qla_host *vha, struct req_que *req,
  struct rsp_que *rsp, uint16_t loop_id, uint16_t lun,
  uint8_t type)
{
 int ret;
 unsigned long flags = 0;

 spin_lock_irqsave(&vha->hw->hardware_lock, flags);
 ret = __qla2x00_marker(vha, req, rsp, loop_id, lun, type);
 spin_unlock_irqrestore(&vha->hw->hardware_lock, flags);

 return (ret);
}
