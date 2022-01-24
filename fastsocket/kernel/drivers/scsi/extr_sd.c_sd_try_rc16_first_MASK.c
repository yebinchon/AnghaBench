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
struct scsi_device {scalar_t__ scsi_level; TYPE_1__* host; } ;
struct TYPE_2__ {int max_cmd_len; } ;

/* Variables and functions */
 scalar_t__ SCSI_SPC_2 ; 
 scalar_t__ FUNC0 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC1(struct scsi_device *sdp)
{
	if (sdp->host->max_cmd_len < 16)
		return 0;
	if (sdp->scsi_level > SCSI_SPC_2)
		return 1;
	if (FUNC0(sdp))
		return 1;
	return 0;
}