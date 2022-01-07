
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct iser_conn {TYPE_2__* device; } ;
struct iscsi_session {int scsi_cmds_max; } ;
struct iscsi_iser_task {int dummy; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int max_cmd_len; int can_queue; scalar_t__ max_channel; scalar_t__ max_id; int max_lun; int transportt; } ;
struct TYPE_4__ {TYPE_1__* ib_device; } ;
struct TYPE_3__ {int * dma_device; } ;


 int ISCSI_DEF_XMIT_CMDS_MAX ;
 scalar_t__ iscsi_host_add (struct Scsi_Host*,int *) ;
 struct Scsi_Host* iscsi_host_alloc (int *,int ,int ) ;
 int iscsi_host_free (struct Scsi_Host*) ;
 int iscsi_host_remove (struct Scsi_Host*) ;
 int iscsi_iser_scsi_transport ;
 int iscsi_iser_sht ;
 int iscsi_iser_transport ;
 int iscsi_max_lun ;
 struct iscsi_cls_session* iscsi_session_setup (int *,struct Scsi_Host*,int ,int ,int,int ,int ) ;

__attribute__((used)) static struct iscsi_cls_session *
iscsi_iser_session_create(struct iscsi_endpoint *ep,
     uint16_t cmds_max, uint16_t qdepth,
     uint32_t initial_cmdsn)
{
 struct iscsi_cls_session *cls_session;
 struct iscsi_session *session;
 struct Scsi_Host *shost;
 struct iser_conn *ib_conn;

 shost = iscsi_host_alloc(&iscsi_iser_sht, 0, 0);
 if (!shost)
  return ((void*)0);
 shost->transportt = iscsi_iser_scsi_transport;
 shost->max_lun = iscsi_max_lun;
 shost->max_id = 0;
 shost->max_channel = 0;
 shost->max_cmd_len = 16;





 if (ep)
  ib_conn = ep->dd_data;

 if (iscsi_host_add(shost,
      ep ? ib_conn->device->ib_device->dma_device : ((void*)0)))
  goto free_host;





 cls_session = iscsi_session_setup(&iscsi_iser_transport, shost,
       ISCSI_DEF_XMIT_CMDS_MAX, 0,
       sizeof(struct iscsi_iser_task),
       initial_cmdsn, 0);
 if (!cls_session)
  goto remove_host;
 session = cls_session->dd_data;

 shost->can_queue = session->scsi_cmds_max;
 return cls_session;

remove_host:
 iscsi_host_remove(shost);
free_host:
 iscsi_host_free(shost);
 return ((void*)0);
}
