
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int (* disable_intrs ) (struct qla_hw_data*) ;} ;


 int stub1 (struct qla_hw_data*) ;

void
qla82xx_reset_chip(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 ha->isp_ops->disable_intrs(ha);
}
