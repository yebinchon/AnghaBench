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
struct ata_queued_cmd {int /*<<< orphan*/  err_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct ata_port {int fastdrain_cnt; int /*<<< orphan*/  lock; TYPE_1__ fastdrain_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ATA_EH_FASTDRAIN_INTERVAL ; 
 int ATA_MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 struct ata_queued_cmd* FUNC4 (struct ata_port*,unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(unsigned long arg)
{
	struct ata_port *ap = (void *)arg;
	unsigned long flags;
	int cnt;

	FUNC5(ap->lock, flags);

	cnt = FUNC2(ap);

	/* are we done? */
	if (!cnt)
		goto out_unlock;

	if (cnt == ap->fastdrain_cnt) {
		unsigned int tag;

		/* No progress during the last interval, tag all
		 * in-flight qcs as timed out and freeze the port.
		 */
		for (tag = 0; tag < ATA_MAX_QUEUE - 1; tag++) {
			struct ata_queued_cmd *qc = FUNC4(ap, tag);
			if (qc)
				qc->err_mask |= AC_ERR_TIMEOUT;
		}

		FUNC3(ap);
	} else {
		/* some qcs have finished, give it another chance */
		ap->fastdrain_cnt = cnt;
		ap->fastdrain_timer.expires =
			FUNC1(jiffies, ATA_EH_FASTDRAIN_INTERVAL);
		FUNC0(&ap->fastdrain_timer);
	}

 out_unlock:
	FUNC6(ap->lock, flags);
}