
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {TYPE_2__* isp_ops; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {int lun_reset; } ;
struct TYPE_5__ {int host; } ;


 int WAIT_LUN ;
 int __qla2xxx_eh_generic_reset (char*,int ,struct scsi_cmnd*,int ) ;
 TYPE_3__* shost_priv (int ) ;

__attribute__((used)) static int
qla2xxx_eh_device_reset(struct scsi_cmnd *cmd)
{
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 struct qla_hw_data *ha = vha->hw;

 return __qla2xxx_eh_generic_reset("DEVICE", WAIT_LUN, cmd,
     ha->isp_ops->lun_reset);
}
