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
typedef  int /*<<< orphan*/  u64 ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 

__attribute__((used)) static u64
FUNC1(void)
{
	u64 system_time = 0;
	struct timeval tv;
	FUNC0(&tv);

	/* We are interested in seconds only. */
	system_time = tv.tv_sec;
	return system_time;
}