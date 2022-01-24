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
struct gemtek {int verified; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int GEMTEK_NS ; 
 int /*<<< orphan*/  SHORT_DELAY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gemtek *gt, int port)
{
	int i, q;

	if (gt->verified == port)
		return 1;

	FUNC1(&gt->lock);

	q = FUNC0(port);	/* Read bus contents before probing. */
	/* Try to turn on CE, CK and DA respectively and check if card responds
	   properly. */
	for (i = 0; i < 3; ++i) {
		FUNC3(1 << i, port);
		FUNC4(SHORT_DELAY);

		if ((FUNC0(port) & (~GEMTEK_NS)) != (0x17 | (1 << (i + 5)))) {
			FUNC2(&gt->lock);
			return 0;
		}
	}
	FUNC3(q >> 5, port);	/* Write bus contents back. */
	FUNC4(SHORT_DELAY);

	FUNC2(&gt->lock);
	gt->verified = port;

	return 1;
}