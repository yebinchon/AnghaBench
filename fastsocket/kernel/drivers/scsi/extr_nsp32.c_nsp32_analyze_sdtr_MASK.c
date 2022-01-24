#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_14__ {int sync_flag; unsigned char period; } ;
typedef  TYPE_3__ nsp32_target ;
struct TYPE_15__ {unsigned char period_num; } ;
typedef  TYPE_4__ nsp32_sync_table ;
struct TYPE_16__ {unsigned char* msginbuf; int syncnum; TYPE_4__* synct; TYPE_3__* cur_target; } ;
typedef  TYPE_5__ nsp32_hw_data ;
struct TYPE_13__ {TYPE_1__* host; } ;
struct TYPE_12__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 unsigned char ASYNC_OFFSET ; 
 int /*<<< orphan*/  NSP32_DEBUG_MSGINOCCUR ; 
 int SDTR_DONE ; 
 int SDTR_INITIATOR ; 
 unsigned char SYNC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_5__*,TYPE_3__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_3__*,int,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct scsi_cmnd *SCpnt)
{
	nsp32_hw_data   *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	nsp32_target     *target     = data->cur_target;
	nsp32_sync_table *synct;
	unsigned char     get_period = data->msginbuf[3];
	unsigned char     get_offset = data->msginbuf[4];
	int               entry;
	int               syncnum;

	FUNC2(NSP32_DEBUG_MSGINOCCUR, "enter");

	synct   = data->synct;
	syncnum = data->syncnum;

	/*
	 * If this inititor sent the SDTR message, then target responds SDTR,
	 * initiator SYNCREG, ACKWIDTH from SDTR parameter.
	 * Messages are not appropriate, then send back reject message.
	 * If initiator did not send the SDTR, but target sends SDTR, 
	 * initiator calculator the appropriate parameter and send back SDTR.
	 */	
	if (target->sync_flag & SDTR_INITIATOR) {
		/*
		 * Initiator sent SDTR, the target responds and
		 * send back negotiation SDTR.
		 */
		FUNC2(NSP32_DEBUG_MSGINOCCUR, "target responds SDTR");
	
		target->sync_flag &= ~SDTR_INITIATOR;
		target->sync_flag |= SDTR_DONE;

		/*
		 * offset:
		 */
		if (get_offset > SYNC_OFFSET) {
			/*
			 * Negotiation is failed, the target send back
			 * unexpected offset value.
			 */
			goto reject;
		}
		
		if (get_offset == ASYNC_OFFSET) {
			/*
			 * Negotiation is succeeded, the target want
			 * to fall back into asynchronous transfer mode.
			 */
			goto async;
		}

		/*
		 * period:
		 *    Check whether sync period is too short. If too short,
		 *    fall back to async mode. If it's ok, then investigate
		 *    the received sync period. If sync period is acceptable
		 *    between sync table start_period and end_period, then
		 *    set this I_T nexus as sent offset and period.
		 *    If it's not acceptable, send back reject and fall back
		 *    to async mode.
		 */
		if (get_period < data->synct[0].period_num) {
			/*
			 * Negotiation is failed, the target send back
			 * unexpected period value.
			 */
			goto reject;
		}

		entry = FUNC3(data, target, get_period);

		if (entry < 0) {
			/*
			 * Target want to use long period which is not 
			 * acceptable NinjaSCSI-32Bi/UDE.
			 */
			goto reject;
		}

		/*
		 * Set new sync table and offset in this I_T nexus.
		 */
		FUNC5(data, target, entry, get_offset);
	} else {
		/* Target send SDTR to initiator. */
		FUNC2(NSP32_DEBUG_MSGINOCCUR, "target send SDTR");
	
		target->sync_flag |= SDTR_INITIATOR;

		/* offset: */
		if (get_offset > SYNC_OFFSET) {
			/* send back as SYNC_OFFSET */
			get_offset = SYNC_OFFSET;
		}

		/* period: */
		if (get_period < data->synct[0].period_num) {
			get_period = data->synct[0].period_num;
		}

		entry = FUNC3(data, target, get_period);

		if (get_offset == ASYNC_OFFSET || entry < 0) {
			FUNC4(data, target);
			FUNC1(SCpnt, 0, ASYNC_OFFSET);
		} else {
			FUNC5(data, target, entry, get_offset);
			FUNC1(SCpnt, get_period, get_offset);
		}
	}

	target->period = get_period;
	FUNC2(NSP32_DEBUG_MSGINOCCUR, "exit");
	return;

 reject:
	/*
	 * If the current message is unacceptable, send back to the target
	 * with reject message.
	 */
	FUNC0(SCpnt);

 async:
	FUNC4(data, target);	/* set as ASYNC transfer mode */

	target->period = 0;
	FUNC2(NSP32_DEBUG_MSGINOCCUR, "exit: set async");
	return;
}