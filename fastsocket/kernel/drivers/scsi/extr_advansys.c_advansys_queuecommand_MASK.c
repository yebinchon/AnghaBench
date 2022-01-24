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
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
#define  ASC_BUSY 130 
#define  ASC_ERROR 129 
#define  ASC_NOERROR 128 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  queuecommand ; 

__attribute__((used)) static int
FUNC3(struct scsi_cmnd *scp, void (*done)(struct scsi_cmnd *))
{
	struct Scsi_Host *shost = scp->device->host;
	int asc_res, result = 0;

	FUNC0(shost, queuecommand);
	scp->scsi_done = done;

	asc_res = FUNC1(scp);

	switch (asc_res) {
	case ASC_NOERROR:
		break;
	case ASC_BUSY:
		result = SCSI_MLQUEUE_HOST_BUSY;
		break;
	case ASC_ERROR:
	default:
		FUNC2(scp);
		break;
	}

	return result;
}