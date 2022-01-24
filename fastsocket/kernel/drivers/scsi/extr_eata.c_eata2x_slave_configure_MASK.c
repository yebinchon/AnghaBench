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
struct scsi_device {int queue_depth; int /*<<< orphan*/  type; scalar_t__ tagged_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_CMD_PER_LUN ; 
 int /*<<< orphan*/  MSG_ORDERED_TAG ; 
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 scalar_t__ TAG_ORDERED ; 
 scalar_t__ TAG_SIMPLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ linked_comm ; 
 int max_queue_depth ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int,char*,char*) ; 
 scalar_t__ tag_mode ; 

__attribute__((used)) static int FUNC3(struct scsi_device *dev)
{
	int tqd, utqd;
	char *tag_suffix, *link_suffix;

	utqd = MAX_CMD_PER_LUN;
	tqd = max_queue_depth;

	if (FUNC0(dev->type) && dev->tagged_supported) {
		if (tag_mode == TAG_SIMPLE) {
			FUNC1(dev, MSG_SIMPLE_TAG, tqd);
			tag_suffix = ", simple tags";
		} else if (tag_mode == TAG_ORDERED) {
			FUNC1(dev, MSG_ORDERED_TAG, tqd);
			tag_suffix = ", ordered tags";
		} else {
			FUNC1(dev, 0, tqd);
			tag_suffix = ", no tags";
		}
	} else if (FUNC0(dev->type) && linked_comm) {
		FUNC1(dev, 0, tqd);
		tag_suffix = ", untagged";
	} else {
		FUNC1(dev, 0, utqd);
		tag_suffix = "";
	}

	if (FUNC0(dev->type) && linked_comm && dev->queue_depth > 2)
		link_suffix = ", sorted";
	else if (FUNC0(dev->type))
		link_suffix = ", unsorted";
	else
		link_suffix = "";

	FUNC2(KERN_INFO, dev,
		"cmds/lun %d%s%s.\n",
	       dev->queue_depth, link_suffix, tag_suffix);

	return 0;
}