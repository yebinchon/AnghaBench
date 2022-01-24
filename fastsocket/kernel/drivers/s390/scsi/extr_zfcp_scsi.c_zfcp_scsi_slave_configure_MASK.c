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

/* Variables and functions */
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 int default_depth ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct scsi_device *sdp)
{
	if (sdp->tagged_supported)
		FUNC0(sdp, MSG_SIMPLE_TAG, default_depth);
	else
		FUNC0(sdp, 0, 1);
	return 0;
}