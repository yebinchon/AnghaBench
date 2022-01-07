
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; TYPE_2__* device; } ;
struct ahd_softc {int dummy; } ;
struct ahd_linux_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int CAM_REQ_INPROG ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int ahd_linux_run_command (struct ahd_softc*,struct ahd_linux_device*,struct scsi_cmnd*) ;
 struct ahd_linux_device* scsi_transport_device_data (TYPE_2__*) ;

__attribute__((used)) static int
ahd_linux_queue(struct scsi_cmnd * cmd, void (*scsi_done) (struct scsi_cmnd *))
{
 struct ahd_softc *ahd;
 struct ahd_linux_device *dev = scsi_transport_device_data(cmd->device);
 int rtn = SCSI_MLQUEUE_HOST_BUSY;

 ahd = *(struct ahd_softc **)cmd->device->host->hostdata;

 cmd->scsi_done = scsi_done;
 cmd->result = CAM_REQ_INPROG << 16;
 rtn = ahd_linux_run_command(ahd, dev, cmd);

 return rtn;
}
