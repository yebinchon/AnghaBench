
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int host_no; struct req_que* req; } ;
struct scsi_device {int queue_depth; int lun; int id; scalar_t__ ordered_tags; TYPE_1__* hostdata; } ;
struct req_que {int max_q_depth; } ;
struct TYPE_2__ {struct scsi_qla_host* vha; } ;
typedef TYPE_1__ fc_port_t ;


 int MSG_ORDERED_TAG ;
 int MSG_SIMPLE_TAG ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,int ,int ,int ) ;
 int ql_dbg_io ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static void qla2x00_adjust_sdev_qdepth_up(struct scsi_device *sdev, int qdepth)
{
 fc_port_t *fcport = sdev->hostdata;
 struct scsi_qla_host *vha = fcport->vha;
 struct req_que *req = ((void*)0);

 req = vha->req;
 if (!req)
  return;

 if (req->max_q_depth <= sdev->queue_depth || req->max_q_depth < qdepth)
  return;

 if (sdev->ordered_tags)
  scsi_adjust_queue_depth(sdev, MSG_ORDERED_TAG, qdepth);
 else
  scsi_adjust_queue_depth(sdev, MSG_SIMPLE_TAG, qdepth);

 ql_dbg(ql_dbg_io, vha, 0x302a,
     "Queue depth adjusted-up to %d for nexus=%ld:%d:%d.\n",
     sdev->queue_depth, fcport->vha->host_no, sdev->id, sdev->lun);
}
