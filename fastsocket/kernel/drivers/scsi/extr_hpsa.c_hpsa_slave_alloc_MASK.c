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
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; int /*<<< orphan*/  lun; } ;
struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  devlock; } ;

/* Variables and functions */
 struct hpsa_scsi_dev_t* FUNC0 (struct ctlr_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 struct ctlr_info* FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev)
{
	struct hpsa_scsi_dev_t *sd;
	unsigned long flags;
	struct ctlr_info *h;

	h = FUNC3(sdev);
	FUNC4(&h->devlock, flags);
	sd = FUNC0(h, FUNC1(sdev),
		FUNC2(sdev), sdev->lun);
	if (sd != NULL)
		sdev->hostdata = sd;
	FUNC5(&h->devlock, flags);
	return 0;
}