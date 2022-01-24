#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_device {scalar_t__ tagged_supported; } ;
struct fc_rport {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FC_FCP_DFLT_QUEUE_DEPTH ; 
 scalar_t__ FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct fc_rport* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct scsi_device *sdev)
{
	struct fc_rport *rport = FUNC5(FUNC4(sdev));

	if (!rport || FUNC0(rport))
		return -ENXIO;

	if (sdev->tagged_supported)
		FUNC1(sdev, FC_FCP_DFLT_QUEUE_DEPTH);
	else
		FUNC2(sdev, FUNC3(sdev),
					FC_FCP_DFLT_QUEUE_DEPTH);

	return 0;
}