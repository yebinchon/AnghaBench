#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct console {int dummy; } ;
struct TYPE_8__ {void* next; } ;
struct TYPE_7__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_con_columns ; 
 int /*<<< orphan*/  sclp_con_lock ; 
 TYPE_3__ sclp_con_pages ; 
 scalar_t__ sclp_con_suspended ; 
 TYPE_1__ sclp_con_timer ; 
 int /*<<< orphan*/  sclp_con_width_htab ; 
 int /*<<< orphan*/ * sclp_conbuf ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  sclp_console_full ; 
 int /*<<< orphan*/  sclp_console_timeout ; 
 int /*<<< orphan*/ * FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(struct console *console, const char *message,
		   unsigned int count)
{
	unsigned long flags;
	void *page;
	int written;

	if (count == 0)
		return;
	FUNC10(&sclp_con_lock, flags);
	/*
	 * process escape characters, write message into buffer,
	 * send buffer to SCLP
	 */
	do {
		/* make sure we have a console output buffer */
		if (sclp_conbuf == NULL) {
			if (FUNC3(&sclp_con_pages))
				sclp_console_full++;
			while (FUNC3(&sclp_con_pages)) {
				if (sclp_con_suspended)
					goto out;
				if (FUNC6())
					break;
				FUNC11(&sclp_con_lock, flags);
				FUNC8();
				FUNC10(&sclp_con_lock, flags);
			}
			page = sclp_con_pages.next;
			FUNC2((struct list_head *) page);
			sclp_conbuf = FUNC7(page, sclp_con_columns,
						       sclp_con_width_htab);
		}
		/* try to write the string to the current output buffer */
		written = FUNC9(sclp_conbuf, (const unsigned char *)
				     message, count);
		if (written == count)
			break;
		/*
		 * Not all characters could be written to the current
		 * output buffer. Emit the buffer, create a new buffer
		 * and then output the rest of the string.
		 */
		FUNC11(&sclp_con_lock, flags);
		FUNC5();
		FUNC10(&sclp_con_lock, flags);
		message += written;
		count -= written;
	} while (count > 0);
	/* Setup timer to output current console buffer after 1/10 second */
	if (sclp_conbuf != NULL && FUNC4(sclp_conbuf) != 0 &&
	    !FUNC12(&sclp_con_timer)) {
		FUNC1(&sclp_con_timer);
		sclp_con_timer.function = sclp_console_timeout;
		sclp_con_timer.data = 0UL;
		sclp_con_timer.expires = jiffies + HZ/10;
		FUNC0(&sclp_con_timer);
	}
out:
	FUNC11(&sclp_con_lock, flags);
}