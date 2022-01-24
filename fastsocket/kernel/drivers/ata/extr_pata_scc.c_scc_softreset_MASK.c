#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/ * device; } ;
struct ata_port {unsigned int flags; TYPE_2__ link; TYPE_1__* ops; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* sff_dev_select ) (struct ata_port*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int ATA_FLAG_SLAVE_POSS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int,int*) ; 
 unsigned int FUNC3 (struct ata_port*,unsigned int,unsigned long) ; 
 scalar_t__ FUNC4 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ata_link *link, unsigned int *classes,
			 unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	unsigned int slave_possible = ap->flags & ATA_FLAG_SLAVE_POSS;
	unsigned int devmask = 0, err_mask;
	u8 err;

	FUNC0("ENTER\n");

	/* determine if device 0/1 are present */
	if (FUNC4(ap, 0))
		devmask |= (1 << 0);
	if (slave_possible && FUNC4(ap, 1))
		devmask |= (1 << 1);

	/* select device 0 again */
	ap->ops->sff_dev_select(ap, 0);

	/* issue bus reset */
	FUNC0("about to softreset, devmask=%x\n", devmask);
	err_mask = FUNC3(ap, devmask, deadline);
	if (err_mask) {
		FUNC1(ap, KERN_ERR, "SRST failed (err_mask=0x%x)\n",
				err_mask);
		return -EIO;
	}

	/* determine by signature whether we have ATA or ATAPI devices */
	classes[0] = FUNC2(&ap->link.device[0],
					  devmask & (1 << 0), &err);
	if (slave_possible && err != 0x81)
		classes[1] = FUNC2(&ap->link.device[1],
						  devmask & (1 << 1), &err);

	FUNC0("EXIT, classes[0]=%u [1]=%u\n", classes[0], classes[1]);
	return 0;
}