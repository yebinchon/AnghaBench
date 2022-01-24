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
struct ata_port {int ctl; int /*<<< orphan*/  link; int /*<<< orphan*/  print_id; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_SRST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(struct ata_port *ap, unsigned int devmask,
                                      unsigned long deadline)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;

	FUNC0("ata%u: bus reset via SRST\n", ap->print_id);

	/* software reset.  causes dev0 to be selected */
	FUNC1(ioaddr->ctl_addr, ap->ctl);
	FUNC3(20);
	FUNC1(ioaddr->ctl_addr, ap->ctl | ATA_SRST);
	FUNC3(20);
	FUNC1(ioaddr->ctl_addr, ap->ctl);

	FUNC2(&ap->link, devmask, deadline);

	return 0;
}