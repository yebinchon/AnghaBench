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
struct TYPE_2__ {int generation; unsigned long* gen_timestamp; } ;
struct hpsb_host {int /*<<< orphan*/  delayed_reset; TYPE_1__ csr; int /*<<< orphan*/  update_config_rom; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delayed_reset_bus ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct hpsb_host *host)
{
	unsigned long reset_delay;
	int next_gen = host->csr.generation + 1;

	if (!host->update_config_rom)
		return -EINVAL;

	if (next_gen > 0xf)
		next_gen = 2;

	/* Stop the delayed interrupt, we're about to change the config rom and
	 * it would be a waste to do a bus reset twice. */
	FUNC1(&host->delayed_reset);

	/* IEEE 1394a-2000 prohibits using the same generation number
	 * twice in a 60 second period. */
	if (FUNC3(jiffies, host->csr.gen_timestamp[next_gen] + 60 * HZ))
		/* Wait 60 seconds from the last time this generation number was
		 * used. */
		reset_delay =
			(60 * HZ) + host->csr.gen_timestamp[next_gen] - jiffies;
	else
		/* Wait 1 second in case some other code wants to change the
		 * Config ROM in the near future. */
		reset_delay = HZ;

	FUNC0(&host->delayed_reset, delayed_reset_bus);
	FUNC2(&host->delayed_reset, reset_delay);

	return 0;
}