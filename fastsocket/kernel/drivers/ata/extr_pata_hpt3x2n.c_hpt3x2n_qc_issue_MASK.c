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
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_3__ {void* private_data; } ;

/* Variables and functions */
 int ATA_TFLAG_WRITE ; 
 int USE_DPLL ; 
 unsigned int FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int) ; 
 int FUNC2 (struct ata_port*,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	int flags = (long)ap->host->private_data;
	int dpll = FUNC2(ap, qc->tf.flags & ATA_TFLAG_WRITE);

	if ((flags & USE_DPLL) != dpll) {
		flags &= ~USE_DPLL;
		flags |= dpll;
		ap->host->private_data = (void *)(long)flags;

		FUNC1(ap, dpll ? 0x21 : 0x23);
	}
	return FUNC0(qc);
}