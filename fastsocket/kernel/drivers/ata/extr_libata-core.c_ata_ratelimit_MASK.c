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

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ata_ratelimit_lock ; 
 scalar_t__ jiffies ; 
 scalar_t__ ratelimit_time ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

int FUNC3(void)
{
	int rc;
	unsigned long flags;

	FUNC0(&ata_ratelimit_lock, flags);

	if (FUNC2(jiffies, ratelimit_time)) {
		rc = 1;
		ratelimit_time = jiffies + (HZ/5);
	} else
		rc = 0;

	FUNC1(&ata_ratelimit_lock, flags);

	return rc;
}