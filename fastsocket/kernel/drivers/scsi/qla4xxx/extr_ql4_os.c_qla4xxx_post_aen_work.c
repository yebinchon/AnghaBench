
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int code; int data; int data_size; } ;
struct TYPE_4__ {TYPE_1__ aen; } ;
struct qla4_work_evt {TYPE_2__ u; } ;
typedef enum iscsi_host_event_code { ____Placeholder_iscsi_host_event_code } iscsi_host_event_code ;


 int QLA4_EVENT_AEN ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int memcpy (int ,int *,int ) ;
 struct qla4_work_evt* qla4xxx_alloc_work (struct scsi_qla_host*,int ,int ) ;
 int qla4xxx_post_work (struct scsi_qla_host*,struct qla4_work_evt*) ;

int qla4xxx_post_aen_work(struct scsi_qla_host *ha,
     enum iscsi_host_event_code aen_code,
     uint32_t data_size, uint8_t *data)
{
 struct qla4_work_evt *e;

 e = qla4xxx_alloc_work(ha, data_size, QLA4_EVENT_AEN);
 if (!e)
  return QLA_ERROR;

 e->u.aen.code = aen_code;
 e->u.aen.data_size = data_size;
 memcpy(e->u.aen.data, data, data_size);

 qla4xxx_post_work(ha, e);

 return QLA_SUCCESS;
}
