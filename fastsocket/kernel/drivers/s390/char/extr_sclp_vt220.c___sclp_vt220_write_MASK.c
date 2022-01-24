#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_7__ {scalar_t__ next; } ;
struct TYPE_6__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 scalar_t__ BUFFER_MAX_DELAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  sclp_console_full ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int,int) ; 
 int /*<<< orphan*/ * sclp_vt220_current_request ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__ sclp_vt220_empty ; 
 int /*<<< orphan*/ * FUNC7 (void*) ; 
 int /*<<< orphan*/  sclp_vt220_lock ; 
 scalar_t__ sclp_vt220_suspended ; 
 int /*<<< orphan*/  sclp_vt220_timeout ; 
 TYPE_1__ sclp_vt220_timer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(const unsigned char *buf, int count, int do_schedule,
		   int convertlf, int may_fail)
{
	unsigned long flags;
	void *page;
	int written;
	int overall_written;

	if (count <= 0)
		return 0;
	overall_written = 0;
	FUNC8(&sclp_vt220_lock, flags);
	do {
		/* Create an sclp output buffer if none exists yet */
		if (sclp_vt220_current_request == NULL) {
			if (FUNC2(&sclp_vt220_empty))
				sclp_console_full++;
			while (FUNC2(&sclp_vt220_empty)) {
				if (may_fail || sclp_vt220_suspended)
					goto out;
				if (FUNC5())
					break;
				FUNC9(&sclp_vt220_lock, flags);

				FUNC3();
				FUNC8(&sclp_vt220_lock, flags);
			}
			page = (void *) sclp_vt220_empty.next;
			FUNC1((struct list_head *) page);
			sclp_vt220_current_request =
				FUNC7(page);
		}
		/* Try to write the string to the current request buffer */
		written = FUNC4(sclp_vt220_current_request,
					     buf, count, convertlf);
		overall_written += written;
		if (written == count)
			break;
		/*
		 * Not all characters could be written to the current
		 * output buffer. Emit the buffer, create a new buffer
		 * and then output the rest of the string.
		 */
		FUNC9(&sclp_vt220_lock, flags);
		FUNC6();
		FUNC8(&sclp_vt220_lock, flags);
		buf += written;
		count -= written;
	} while (count > 0);
	/* Setup timer to output current console buffer after some time */
	if (sclp_vt220_current_request != NULL &&
	    !FUNC10(&sclp_vt220_timer) && do_schedule) {
		sclp_vt220_timer.function = sclp_vt220_timeout;
		sclp_vt220_timer.data = 0UL;
		sclp_vt220_timer.expires = jiffies + BUFFER_MAX_DELAY;
		FUNC0(&sclp_vt220_timer);
	}
out:
	FUNC9(&sclp_vt220_lock, flags);
	return overall_written;
}