
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int lun; int id; int queue_depth; scalar_t__ hostdata; } ;
struct fc_port {TYPE_1__* vha; } ;
typedef struct fc_port fc_port_t ;
struct TYPE_2__ {int host_no; } ;


 int ql_dbg (int ,TYPE_1__*,int,char*,int ,int ,int ,int ) ;
 int ql_dbg_io ;
 int scsi_track_queue_full (struct scsi_device*,int) ;

__attribute__((used)) static void qla2x00_handle_queue_full(struct scsi_device *sdev, int qdepth)
{
 fc_port_t *fcport = (struct fc_port *) sdev->hostdata;

 if (!scsi_track_queue_full(sdev, qdepth))
  return;

 ql_dbg(ql_dbg_io, fcport->vha, 0x3029,
     "Queue depth adjusted-down to %d for nexus=%ld:%d:%d.\n",
     sdev->queue_depth, fcport->vha->host_no, sdev->id, sdev->lun);
}
