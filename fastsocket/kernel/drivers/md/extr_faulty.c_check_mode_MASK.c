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
struct faulty_conf {scalar_t__* period; int /*<<< orphan*/ * counters; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct faulty_conf *conf, int mode)
{
	if (conf->period[mode] == 0 &&
	    FUNC1(&conf->counters[mode]) <= 0)
		return 0; /* no failure, no decrement */


	if (FUNC0(&conf->counters[mode])) {
		if (conf->period[mode])
			FUNC2(&conf->counters[mode], conf->period[mode]);
		return 1;
	}
	return 0;
}