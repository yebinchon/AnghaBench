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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HZ ; 
 scalar_t__ MAX_JIFFY_OFFSET ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long now,
				      unsigned long time,
				      unsigned long expire)
{
	expire = time + expire;

	if (FUNC1(now, expire))
		return 0; /* expired */
	if (expire < now) {
		/* jiffies wrapped */
		expire -= MAX_JIFFY_OFFSET;
		now -= MAX_JIFFY_OFFSET;
	}
	FUNC0(expire < now);

	return (expire - now) / HZ;
}