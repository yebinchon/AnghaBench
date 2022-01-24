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
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct ata_port {int pflags; int fastdrain_cnt; TYPE_1__ fastdrain_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_EH_FASTDRAIN_INTERVAL ; 
 int ATA_PFLAG_EH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, int fastdrain)
{
	int cnt;

	/* already scheduled? */
	if (ap->pflags & ATA_PFLAG_EH_PENDING)
		return;

	ap->pflags |= ATA_PFLAG_EH_PENDING;

	if (!fastdrain)
		return;

	/* do we have in-flight qcs? */
	cnt = FUNC2(ap);
	if (!cnt)
		return;

	/* activate fast drain */
	ap->fastdrain_cnt = cnt;
	ap->fastdrain_timer.expires =
		FUNC1(jiffies, ATA_EH_FASTDRAIN_INTERVAL);
	FUNC0(&ap->fastdrain_timer);
}