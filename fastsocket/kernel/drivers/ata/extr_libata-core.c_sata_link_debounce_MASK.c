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
typedef  int u32 ;
struct ata_link {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  SCR_STATUS ; 
 unsigned long FUNC0 (unsigned long,unsigned long const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long jiffies ; 
 int FUNC2 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(struct ata_link *link, const unsigned long *params,
		       unsigned long deadline)
{
	unsigned long interval = params[0];
	unsigned long duration = params[1];
	unsigned long last_jiffies, t;
	u32 last, cur;
	int rc;

	t = FUNC0(jiffies, params[2]);
	if (FUNC4(t, deadline))
		deadline = t;

	if ((rc = FUNC2(link, SCR_STATUS, &cur)))
		return rc;
	cur &= 0xf;

	last = cur;
	last_jiffies = jiffies;

	while (1) {
		FUNC1(link->ap, interval);
		if ((rc = FUNC2(link, SCR_STATUS, &cur)))
			return rc;
		cur &= 0xf;

		/* DET stable? */
		if (cur == last) {
			if (cur == 1 && FUNC4(jiffies, deadline))
				continue;
			if (FUNC3(jiffies,
				       FUNC0(last_jiffies, duration)))
				return 0;
			continue;
		}

		/* unstable, start over */
		last = cur;
		last_jiffies = jiffies;

		/* Check deadline.  If debouncing failed, return
		 * -EPIPE to tell upper layer to lower link speed.
		 */
		if (FUNC3(jiffies, deadline))
			return -EPIPE;
	}
}