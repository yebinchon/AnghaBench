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
struct ctlr_info {int ndevices; TYPE_1__** dev; } ;
struct TYPE_2__ {int bus; int target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int HPSA_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lun_taken ; 

__attribute__((used)) static int FUNC4(struct ctlr_info *h,
	unsigned char scsi3addr[], int bus, int *target, int *lun)
{
	/* finds an unused bus, target, lun for a new physical device
	 * assumes h->devlock is held
	 */
	int i, found = 0;
	FUNC0(lun_taken, HPSA_MAX_DEVICES);

	FUNC2(lun_taken, HPSA_MAX_DEVICES);

	for (i = 0; i < h->ndevices; i++) {
		if (h->dev[i]->bus == bus && h->dev[i]->target != -1)
			FUNC1(h->dev[i]->target, lun_taken);
	}

	i = FUNC3(lun_taken, HPSA_MAX_DEVICES);
	if (i < HPSA_MAX_DEVICES) {
		/* *bus = 1; */
		*target = i;
		*lun = 0;
		found = 1;
	}
	return !found;
}