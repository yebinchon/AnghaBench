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
struct seq_file {int dummy; } ;
struct scsi_device {int* vendor; int* model; int* rev; int scsi_level; int /*<<< orphan*/  type; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct scsi_device *sdev;
	struct seq_file *s = data;
	int i;

	if (!FUNC1(dev))
		goto out;

	sdev = FUNC3(dev);
	FUNC2(s,
		"Host: scsi%d Channel: %02d Id: %02d Lun: %02d\n  Vendor: ",
		sdev->host->host_no, sdev->channel, sdev->id, sdev->lun);
	for (i = 0; i < 8; i++) {
		if (sdev->vendor[i] >= 0x20)
			FUNC2(s, "%c", sdev->vendor[i]);
		else
			FUNC2(s, " ");
	}

	FUNC2(s, " Model: ");
	for (i = 0; i < 16; i++) {
		if (sdev->model[i] >= 0x20)
			FUNC2(s, "%c", sdev->model[i]);
		else
			FUNC2(s, " ");
	}

	FUNC2(s, " Rev: ");
	for (i = 0; i < 4; i++) {
		if (sdev->rev[i] >= 0x20)
			FUNC2(s, "%c", sdev->rev[i]);
		else
			FUNC2(s, " ");
	}

	FUNC2(s, "\n");

	FUNC2(s, "  Type:   %s ", FUNC0(sdev->type));
	FUNC2(s, "               ANSI  SCSI revision: %02x",
			sdev->scsi_level - (sdev->scsi_level > 1));
	if (sdev->scsi_level == 2)
		FUNC2(s, " CCS\n");
	else
		FUNC2(s, "\n");

out:
	return 0;
}