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
struct mce {int /*<<< orphan*/  finished; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; struct mce* entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mce*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long jiffies ; 
 TYPE_1__ mcelog ; 
 int /*<<< orphan*/  FUNC3 (struct mce*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  x86_mce_decoder_chain ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned int next, i, prev = 0;

	next = FUNC5(mcelog.next);

	do {
		struct mce *m;

		/* drain what was logged during boot */
		for (i = prev; i < next; i++) {
			unsigned long start = jiffies;
			unsigned retries = 1;

			m = &mcelog.entry[i];

			while (!m->finished) {
				if (FUNC7(jiffies, start + 2*retries))
					retries++;

				FUNC2();

				if (!m->finished && retries >= 4) {
					FUNC4("MCE: skipping error being logged currently!\n");
					break;
				}
			}
			FUNC6();
			FUNC0(&x86_mce_decoder_chain, 0, m);
		}

		FUNC3(mcelog.entry + prev, 0, (next - prev) * sizeof(*m));
		prev = next;
		next = FUNC1(&mcelog.next, prev, 0);
	} while (next != prev);
}