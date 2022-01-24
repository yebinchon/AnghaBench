#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; TYPE_2__* device; } ;
struct ahd_softc {int dummy; } ;
struct ahd_linux_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int CAM_REQ_INPROG ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC0 (struct ahd_softc*,struct ahd_linux_device*,struct scsi_cmnd*) ; 
 struct ahd_linux_device* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(struct scsi_cmnd * cmd, void (*scsi_done) (struct scsi_cmnd *))
{
	struct	 ahd_softc *ahd;
	struct	 ahd_linux_device *dev = FUNC1(cmd->device);
	int rtn = SCSI_MLQUEUE_HOST_BUSY;

	ahd = *(struct ahd_softc **)cmd->device->host->hostdata;

	cmd->scsi_done = scsi_done;
	cmd->result = CAM_REQ_INPROG << 16;
	rtn = FUNC0(ahd, dev, cmd);

	return rtn;
}