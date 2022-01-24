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
struct sst25l_flash {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long MAX_READY_WAIT_JIFFIES ; 
 int SST25L_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 int FUNC1 (struct sst25l_flash*,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct sst25l_flash *flash)
{
	unsigned long deadline;
	int status, err;

	deadline = jiffies + MAX_READY_WAIT_JIFFIES;
	do {
		err = FUNC1(flash, &status);
		if (err)
			return err;
		if (!(status & SST25L_STATUS_BUSY))
			return 0;

		FUNC0();
	} while (!FUNC2(jiffies, deadline));

	return -ETIMEDOUT;
}