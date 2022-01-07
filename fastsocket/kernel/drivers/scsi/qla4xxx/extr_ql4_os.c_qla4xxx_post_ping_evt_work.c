
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {int data; void* data_size; void* pid; void* status; } ;
struct TYPE_3__ {TYPE_2__ ping; } ;
struct qla4_work_evt {TYPE_1__ u; } ;


 int QLA4_EVENT_PING_STATUS ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int memcpy (int ,int *,void*) ;
 struct qla4_work_evt* qla4xxx_alloc_work (struct scsi_qla_host*,void*,int ) ;
 int qla4xxx_post_work (struct scsi_qla_host*,struct qla4_work_evt*) ;

int qla4xxx_post_ping_evt_work(struct scsi_qla_host *ha,
          uint32_t status, uint32_t pid,
          uint32_t data_size, uint8_t *data)
{
 struct qla4_work_evt *e;

 e = qla4xxx_alloc_work(ha, data_size, QLA4_EVENT_PING_STATUS);
 if (!e)
  return QLA_ERROR;

 e->u.ping.status = status;
 e->u.ping.pid = pid;
 e->u.ping.data_size = data_size;
 memcpy(e->u.ping.data, data, data_size);

 qla4xxx_post_work(ha, e);

 return QLA_SUCCESS;
}
