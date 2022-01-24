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
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_1__ link; } ;

/* Variables and functions */
 int ATA_TFLAG_POLLING ; 
 int NV_INT_ADDED ; 
 int NV_INT_DEV ; 
 int NV_INT_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 struct ata_queued_cmd* FUNC1 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int FUNC3 (struct ata_port*,struct ata_queued_cmd*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ata_port *ap, u8 irq_stat)
{
	struct ata_queued_cmd *qc = FUNC1(ap, ap->link.active_tag);

	/* freeze if hotplugged */
	if (FUNC4(irq_stat & (NV_INT_ADDED | NV_INT_REMOVED))) {
		FUNC0(ap);
		return 1;
	}

	/* bail out if not our interrupt */
	if (!(irq_stat & NV_INT_DEV))
		return 0;

	/* DEV interrupt w/ no active qc? */
	if (FUNC4(!qc || (qc->tf.flags & ATA_TFLAG_POLLING))) {
		FUNC2(ap);
		return 1;
	}

	/* handle interrupt */
	return FUNC3(ap, qc);
}