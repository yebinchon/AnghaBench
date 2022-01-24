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
struct scsi_device {int /*<<< orphan*/  queue_depth; scalar_t__ tagged_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev, int tag_type)
{
	if (sdev->tagged_supported) {
		FUNC2(sdev, tag_type);

		if (tag_type)
			FUNC0(sdev, sdev->queue_depth);
		else
			FUNC1(sdev, sdev->queue_depth);
	} else
		tag_type = 0;

	return tag_type;
}