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
struct ata_ioports {int /*<<< orphan*/  ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; int /*<<< orphan*/  link; int /*<<< orphan*/  print_id; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_SRST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ata_port *ap, unsigned int devmask,
			     unsigned long deadline)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;

	FUNC0("ata%u: bus reset via SRST\n", ap->print_id);

	/* software reset.  causes dev0 to be selected */
	FUNC2(ap->ctl, ioaddr->ctl_addr);
	FUNC3(20);	/* FIXME: flush */
	FUNC2(ap->ctl | ATA_SRST, ioaddr->ctl_addr);
	FUNC3(20);	/* FIXME: flush */
	FUNC2(ap->ctl, ioaddr->ctl_addr);
	ap->last_ctl = ap->ctl;

	/* wait the port to become ready */
	return FUNC1(&ap->link, devmask, deadline);
}