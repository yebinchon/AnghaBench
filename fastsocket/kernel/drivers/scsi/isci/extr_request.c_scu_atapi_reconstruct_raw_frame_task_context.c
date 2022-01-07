
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stp_task_context {int dummy; } ;
struct TYPE_14__ {int fis_type; } ;
struct TYPE_13__ {TYPE_7__ stp; } ;
struct scu_task_context {int transfer_length_bytes; TYPE_6__ type; } ;
struct TYPE_12__ {TYPE_7__ cmd; } ;
struct TYPE_11__ {TYPE_3__* io_task_ptr; } ;
struct isci_request {TYPE_5__ stp; struct scu_task_context* tc; TYPE_4__ ttype_ptr; TYPE_1__* target_device; } ;
struct host_to_dev_fis {int dummy; } ;
struct ata_device {int cdb_len; } ;
struct TYPE_9__ {void* atapi_packet; } ;
struct TYPE_10__ {TYPE_2__ ata_task; } ;
struct TYPE_8__ {int domain_dev; } ;


 int ATAPI_CDB_LEN ;
 int FIS_DATA ;
 int memcpy (int *,void*,int ) ;
 int memset (TYPE_7__*,int ,int) ;
 struct ata_device* sas_to_ata_dev (int ) ;

__attribute__((used)) static void scu_atapi_reconstruct_raw_frame_task_context(struct isci_request *ireq)
{
 struct ata_device *dev = sas_to_ata_dev(ireq->target_device->domain_dev);
 void *atapi_cdb = ireq->ttype_ptr.io_task_ptr->ata_task.atapi_packet;
 struct scu_task_context *task_context = ireq->tc;





 memset(&ireq->stp.cmd, 0, sizeof(struct host_to_dev_fis));
 memcpy(((u8 *)&ireq->stp.cmd + sizeof(u32)), atapi_cdb, ATAPI_CDB_LEN);
 memset(&(task_context->type.stp), 0, sizeof(struct stp_task_context));
 task_context->type.stp.fis_type = FIS_DATA;
 task_context->transfer_length_bytes = dev->cdb_len;
}
