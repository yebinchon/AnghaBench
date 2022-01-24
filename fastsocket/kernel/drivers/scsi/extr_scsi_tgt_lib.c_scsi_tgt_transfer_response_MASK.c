#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  request; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* transfer_response ) (struct scsi_cmnd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
#define  SCSI_MLQUEUE_DEVICE_BUSY 129 
#define  SCSI_MLQUEUE_HOST_BUSY 128 
 int /*<<< orphan*/  FUNC0 (char*,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_tgt_cmd_done ; 
 struct Scsi_Host* FUNC2 (struct scsi_cmnd*) ; 
 int FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *shost = FUNC2(cmd);
	int err;

	FUNC0("cmd %p %u\n", cmd, FUNC1(cmd->request));

	err = shost->hostt->transfer_response(cmd, scsi_tgt_cmd_done);
	switch (err) {
	case SCSI_MLQUEUE_HOST_BUSY:
	case SCSI_MLQUEUE_DEVICE_BUSY:
		return -EAGAIN;
	}
	return 0;
}