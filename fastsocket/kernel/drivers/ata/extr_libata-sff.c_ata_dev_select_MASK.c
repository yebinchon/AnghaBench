#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* device; } ;
struct ata_port {TYPE_3__ link; TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ class; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sff_dev_select ) (struct ata_port*,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATAPI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*,unsigned int) ; 

void FUNC5(struct ata_port *ap, unsigned int device,
			   unsigned int wait, unsigned int can_sleep)
{
	if (FUNC0(ap))
		FUNC2(ap, KERN_INFO, "ata_dev_select: ENTER, "
				"device %u, wait %u\n", device, wait);

	if (wait)
		FUNC3(ap);

	ap->ops->sff_dev_select(ap, device);

	if (wait) {
		if (can_sleep && ap->link.device[device].class == ATA_DEV_ATAPI)
			FUNC1(ap, 150);
		FUNC3(ap);
	}
}