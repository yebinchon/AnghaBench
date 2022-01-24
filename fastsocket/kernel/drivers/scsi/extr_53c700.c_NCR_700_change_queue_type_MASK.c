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
struct scsi_device {int /*<<< orphan*/  sdev_target; int /*<<< orphan*/  queue_depth; TYPE_1__* host; } ;
struct NCR_700_Host_Parameters {int tag_negotiated; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_per_lun; scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCR_700_START_TAG_NEGOTIATION ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC8(struct scsi_device *SDp, int tag_type)
{
	int change_tag = ((tag_type ==0 &&  FUNC3(SDp) != 0)
			  || (tag_type != 0 && FUNC3(SDp) == 0));
	struct NCR_700_Host_Parameters *hostdata = 
		(struct NCR_700_Host_Parameters *)SDp->host->hostdata[0];

	FUNC4(SDp, tag_type);

	/* We have a global (per target) flag to track whether TCQ is
	 * enabled, so we'll be turning it off for the entire target here.
	 * our tag algorithm will fail if we mix tagged and untagged commands,
	 * so quiesce the device before doing this */
	if (change_tag)
		FUNC5(SDp->sdev_target);

	if (!tag_type) {
		/* shift back to the default unqueued number of commands
		 * (the user can still raise this) */
		FUNC2(SDp, SDp->host->cmd_per_lun);
		hostdata->tag_negotiated &= ~(1 << FUNC7(SDp));
	} else {
		/* Here, we cleared the negotiation flag above, so this
		 * will force the driver to renegotiate */
		FUNC1(SDp, SDp->queue_depth);
		if (change_tag)
			FUNC0(SDp, NCR_700_START_TAG_NEGOTIATION);
	}
	if (change_tag)
		FUNC6(SDp->sdev_target);

	return tag_type;
}