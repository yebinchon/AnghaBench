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
struct aggregator {scalar_t__ is_active; } ;

/* Variables and functions */
 struct aggregator* FUNC0 (struct aggregator*) ; 

__attribute__((used)) static struct aggregator *FUNC1(struct aggregator *aggregator)
{
	struct aggregator *retval = NULL;

	for (; aggregator; aggregator = FUNC0(aggregator)) {
		if (aggregator->is_active) {
			retval = aggregator;
			break;
		}
	}

	return retval;
}