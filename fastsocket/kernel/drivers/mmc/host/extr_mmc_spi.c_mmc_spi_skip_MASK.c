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
typedef  scalar_t__ u8 ;
struct mmc_spi_host {TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__* status; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 int FUNC0 (struct mmc_spi_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mmc_spi_host *host, unsigned long timeout,
			unsigned n, u8 byte)
{
	u8		*cp = host->data->status;
	unsigned long start = jiffies;

	while (1) {
		int		status;
		unsigned	i;

		status = FUNC0(host, n);
		if (status < 0)
			return status;

		for (i = 0; i < n; i++) {
			if (cp[i] != byte)
				return cp[i];
		}

		if (FUNC2(start + timeout))
			break;

		/* If we need long timeouts, we may release the CPU.
		 * We use jiffies here because we want to have a relation
		 * between elapsed time and the blocking of the scheduler.
		 */
		if (FUNC2(start+1))
			FUNC1();
	}
	return -ETIMEDOUT;
}