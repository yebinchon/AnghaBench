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
struct raw3215_info {unsigned int count; int flags; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 unsigned int RAW3215_BUFFER_SIZE ; 
 int RAW3215_FLUSHING ; 
 int RAW3215_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct raw3215_info *raw, unsigned int length)
{
	while (RAW3215_BUFFER_SIZE - raw->count < length) {
		/* While console is frozen for suspend we have no other
		 * choice but to drop message from the buffer to make
		 * room for even more messages. */
		if (raw->flags & RAW3215_FROZEN) {
			FUNC1(raw);
			continue;
		}
		/* there might be a request pending */
		raw->flags |= RAW3215_FLUSHING;
		FUNC2(raw);
		FUNC3(raw);
		raw->flags &= ~RAW3215_FLUSHING;
#ifdef CONFIG_TN3215_CONSOLE
		wait_cons_dev();
#endif
		/* Enough room freed up ? */
		if (RAW3215_BUFFER_SIZE - raw->count >= length)
			break;
		/* there might be another cpu waiting for the lock */
		FUNC5(FUNC0(raw->cdev));
		FUNC6(100);
		FUNC4(FUNC0(raw->cdev));
	}
}