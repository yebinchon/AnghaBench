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
struct scsi_device {size_t id; int /*<<< orphan*/  sdev_target; TYPE_1__* host; scalar_t__ tagged_supported; scalar_t__ sdtr; scalar_t__ ppr; } ;
struct esp_target_data {int /*<<< orphan*/  flags; } ;
struct esp {int flags; struct esp_target_data* target; } ;
struct TYPE_2__ {int cmd_per_lun; } ;

/* Variables and functions */
 int ESP_DEFAULT_TAGS ; 
 int ESP_FLAG_DISABLE_SYNC ; 
 int ESP_MAX_TAG ; 
 int /*<<< orphan*/  ESP_TGT_DISCONNECT ; 
 int /*<<< orphan*/  MSG_ORDERED_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 struct esp* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *dev)
{
	struct esp *esp = FUNC3(dev->host);
	struct esp_target_data *tp = &esp->target[dev->id];
	int goal_tags, queue_depth;

	if (esp->flags & ESP_FLAG_DISABLE_SYNC) {
		/* Bypass async domain validation */
		dev->ppr  = 0;
		dev->sdtr = 0;
	}

	goal_tags = 0;

	if (dev->tagged_supported) {
		/* XXX make this configurable somehow XXX */
		goal_tags = ESP_DEFAULT_TAGS;

		if (goal_tags > ESP_MAX_TAG)
			goal_tags = ESP_MAX_TAG;
	}

	queue_depth = goal_tags;
	if (queue_depth < dev->host->cmd_per_lun)
		queue_depth = dev->host->cmd_per_lun;

	if (goal_tags) {
		FUNC2(dev, MSG_ORDERED_TAG);
		FUNC0(dev, queue_depth);
	} else {
		FUNC1(dev, queue_depth);
	}
	tp->flags |= ESP_TGT_DISCONNECT;

	if (!FUNC5(dev->sdev_target))
		FUNC4(dev);

	return 0;
}