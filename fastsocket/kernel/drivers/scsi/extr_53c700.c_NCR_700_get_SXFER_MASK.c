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
struct scsi_device {int /*<<< orphan*/  sdev_target; TYPE_1__* host; } ;
struct NCR_700_Host_Parameters {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct NCR_700_Host_Parameters*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u8
FUNC3(struct scsi_device *SDp)
{
	struct NCR_700_Host_Parameters *hostdata = 
		(struct NCR_700_Host_Parameters *)SDp->host->hostdata[0];

	return FUNC0(hostdata,
					      FUNC1(SDp->sdev_target),
					      FUNC2(SDp->sdev_target));
}