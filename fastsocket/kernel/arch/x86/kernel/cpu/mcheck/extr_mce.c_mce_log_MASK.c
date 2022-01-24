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
struct mce {int finished; } ;
struct TYPE_4__ {TYPE_1__* entry; int /*<<< orphan*/  next; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int finished; } ;

/* Variables and functions */
 unsigned int MCE_LOG_LEN ; 
 int /*<<< orphan*/  MCE_OVERFLOW ; 
 int NOTIFY_STOP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mce*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned long mce_need_notify ; 
 TYPE_2__ mcelog ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct mce*,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mce*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  x86_mce_decoder_chain ; 

void FUNC8(struct mce *mce)
{
	unsigned next, entry;
	int ret = 0;

	/* Emit the trace record: */
	FUNC6(mce);

	ret = FUNC0(&x86_mce_decoder_chain, 0, mce);
	if (ret == NOTIFY_STOP)
		return;

	mce->finished = 0;
	FUNC7();
	for (;;) {
		entry = FUNC3(mcelog.next);
		for (;;) {

			/*
			 * When the buffer fills up discard new entries.
			 * Assume that the earlier errors are the more
			 * interesting ones:
			 */
			if (entry >= MCE_LOG_LEN) {
				FUNC4(MCE_OVERFLOW,
					(unsigned long *)&mcelog.flags);
				return;
			}
			/* Old left over entry. Skip: */
			if (mcelog.entry[entry].finished) {
				entry++;
				continue;
			}
			break;
		}
		FUNC5();
		next = entry + 1;
		if (FUNC1(&mcelog.next, entry, next) == entry)
			break;
	}
	FUNC2(mcelog.entry + entry, mce, sizeof(struct mce));
	FUNC7();
	mcelog.entry[entry].finished = 1;
	FUNC7();

	mce->finished = 1;
	FUNC4(0, &mce_need_notify);
}