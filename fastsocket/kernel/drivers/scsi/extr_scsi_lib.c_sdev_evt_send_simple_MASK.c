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
struct scsi_event {int dummy; } ;
struct scsi_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum scsi_device_event { ____Placeholder_scsi_device_event } scsi_device_event ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 struct scsi_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,struct scsi_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int) ; 

void FUNC3(struct scsi_device *sdev,
			  enum scsi_device_event evt_type, gfp_t gfpflags)
{
	struct scsi_event *evt = FUNC0(evt_type, gfpflags);
	if (!evt) {
		FUNC2(KERN_ERR, sdev, "event %d eaten due to OOM\n",
			    evt_type);
		return;
	}

	FUNC1(sdev, evt);
}