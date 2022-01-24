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
struct sclp_buffer {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_8__ {void* next; } ;
struct TYPE_7__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SPACES_PER_TAB ; 
 int /*<<< orphan*/  FUNC0 (struct sclp_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (struct sclp_buffer*) ; 
 struct sclp_buffer* FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  sclp_tty_columns ; 
 int /*<<< orphan*/  sclp_tty_lock ; 
 TYPE_3__ sclp_tty_pages ; 
 int /*<<< orphan*/  sclp_tty_timeout ; 
 TYPE_1__ sclp_tty_timer ; 
 struct sclp_buffer* sclp_ttybuf ; 
 int FUNC8 (struct sclp_buffer*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(const unsigned char *str, int count, int may_fail)
{
	unsigned long flags;
	void *page;
	int written;
	int overall_written;
	struct sclp_buffer *buf;

	if (count <= 0)
		return 0;
	overall_written = 0;
	FUNC9(&sclp_tty_lock, flags);
	do {
		/* Create a sclp output buffer if none exists yet */
		if (sclp_ttybuf == NULL) {
			while (FUNC4(&sclp_tty_pages)) {
				FUNC10(&sclp_tty_lock, flags);
				if (may_fail)
					goto out;
				else
					FUNC7();
				FUNC9(&sclp_tty_lock, flags);
			}
			page = sclp_tty_pages.next;
			FUNC3((struct list_head *) page);
			sclp_ttybuf = FUNC6(page, sclp_tty_columns,
						       SPACES_PER_TAB);
		}
		/* try to write the string to the current output buffer */
		written = FUNC8(sclp_ttybuf, str, count);
		overall_written += written;
		if (written == count)
			break;
		/*
		 * Not all characters could be written to the current
		 * output buffer. Emit the buffer, create a new buffer
		 * and then output the rest of the string.
		 */
		buf = sclp_ttybuf;
		sclp_ttybuf = NULL;
		FUNC10(&sclp_tty_lock, flags);
		FUNC0(buf);
		FUNC9(&sclp_tty_lock, flags);
		str += written;
		count -= written;
	} while (count > 0);
	/* Setup timer to output current console buffer after 1/10 second */
	if (sclp_ttybuf && FUNC5(sclp_ttybuf) &&
	    !FUNC11(&sclp_tty_timer)) {
		FUNC2(&sclp_tty_timer);
		sclp_tty_timer.function = sclp_tty_timeout;
		sclp_tty_timer.data = 0UL;
		sclp_tty_timer.expires = jiffies + HZ/10;
		FUNC1(&sclp_tty_timer);
	}
	FUNC10(&sclp_tty_lock, flags);
out:
	return overall_written;
}